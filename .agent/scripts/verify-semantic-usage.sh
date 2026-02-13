#!/usr/bin/env bash
set -euo pipefail

COMPONENT_DIR="${1:-packages/components/src}"

echo "Checking semantic-only token usage in: ${COMPONENT_DIR}"

violations=0

grep -RInE --include="*.css.ts" --include="*.ts" --include="*.tsx" "primitiveColors" "${COMPONENT_DIR}" >/tmp/semantic_check_primitive.txt || true
grep -RInE --include="*.css.ts" "(#[0-9a-fA-F]{3,8}|rgb\\(|rgba\\()" "${COMPONENT_DIR}" >/tmp/semantic_check_hex.txt || true

if [[ -s /tmp/semantic_check_primitive.txt ]]; then
  echo ""
  echo "[FAIL] primitiveColors usage found:"
  cat /tmp/semantic_check_primitive.txt
  violations=1
fi

if [[ -s /tmp/semantic_check_hex.txt ]]; then
  echo ""
  echo "[FAIL] hardcoded color value found in style files:"
  cat /tmp/semantic_check_hex.txt
  violations=1
fi

rm -f /tmp/semantic_check_primitive.txt /tmp/semantic_check_hex.txt

if [[ "${violations}" -ne 0 ]]; then
  echo ""
  echo "Semantic usage check failed."
  exit 1
fi

echo "Semantic usage check passed."
