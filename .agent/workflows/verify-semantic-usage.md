---
description: Verify that component styles use semantic tokens only
---

# Verify Semantic Usage Workflow

## 1. Run Check Script

Run:

```bash
bash .agent/scripts/verify-semantic-usage.sh
```

Optional target directory:

```bash
bash .agent/scripts/verify-semantic-usage.sh packages/components/src
```

## 2. Fix Violations

If the script fails:

- Replace `primitiveColors` usage with `vars.colors.*` semantic paths.
- Replace hardcoded `#hex` or `rgb/rgba` values with semantic tokens.
- Keep exceptions only in token package files or explicit migration bridge code.

## 3. Re-run Until Pass

Re-run the script after changes until it returns success.
