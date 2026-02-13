set -euo pipefail

COMPONENT_DIR="${1:-packages/components/src}"

echo "Checking component conventions in: ${COMPONENT_DIR}"

violations=0

# 1) Inline styles are forbidden.
grep -RInE --include="*.tsx" --include="*.ts" "style=\{\{" "${COMPONENT_DIR}" >/tmp/component_conv_inline_style.txt || true
if [[ -s /tmp/component_conv_inline_style.txt ]]; then
  echo ""
  echo "[FAIL] Inline style usage found:"
  cat /tmp/component_conv_inline_style.txt
  violations=1
fi

# 2) Click handlers on non-interactive tags are forbidden.
grep -RInE --include="*.tsx" "<(div|span)[^>]*onClick=" "${COMPONENT_DIR}" >/tmp/component_conv_non_semantic_click.txt || true
if [[ -s /tmp/component_conv_non_semantic_click.txt ]]; then
  echo ""
  echo "[FAIL] Non-semantic click handler usage found (<div>/<span> with onClick):"
  cat /tmp/component_conv_non_semantic_click.txt
  violations=1
fi

# 3) Stateful components should be headless-first.
# Heuristic: if file uses local state/context for component behavior,
# require Ark/Radix import, unless explicitly waived.
while IFS= read -r file; do
  if grep -qE "@allow-local-headless" "$file"; then
    continue
  fi

  if grep -qE "from ['\"](@ark-ui/react|@radix-ui/)" "$file"; then
    continue
  fi

  if grep -qE "useState\(|useReducer\(|createContext\(" "$file"; then
    echo "$file" >>/tmp/component_conv_headless.txt
  fi
done < <(find "${COMPONENT_DIR}" -type f -name "*.tsx" -o -name "*.ts")

if [[ -s /tmp/component_conv_headless.txt ]]; then
  echo ""
  echo "[FAIL] Stateful/context components without Ark/Radix import found:"
  cat /tmp/component_conv_headless.txt
  echo "Add Ark/Radix primitives or add '@allow-local-headless' waiver comment with reason."
  violations=1
fi

rm -f /tmp/component_conv_inline_style.txt
rm -f /tmp/component_conv_non_semantic_click.txt
rm -f /tmp/component_conv_headless.txt

if [[ "${violations}" -ne 0 ]]; then
  echo ""
  echo "Component convention check failed."
  exit 1
fi

echo "Component convention check passed."
