---
name: personal-design-system
description: Build or reorganize a personal design system with clear token layering, component API consistency, package boundaries, and lightweight governance. Use when defining foundations, migrating existing UI styles into reusable tokens, or standardizing component variants and states.
---

# Personal Design System

Use this skill to structure and evolve your own design system for long-term consistency.

## Reference Routing

Read only the relevant file for the user request:

- Token taxonomy and layer design: `references/tokens.md`
- Naming conventions: `references/naming.md`
- Interaction state model: `references/states.md`
- Variant and size strategy: `references/variants-and-sizes.md`
- Accessibility defaults: `references/accessibility.md`
- Package boundaries: `references/package-boundaries.md`
- Documentation governance: `references/documentation.md`
- Incremental rollout plan: `references/migration.md`
- Semantic-only component token usage: `references/semantic-only-usage.md`

## Workflow

1. Classify the task and load only the mapped reference file(s).
2. Propose minimal structure changes first.
3. Implement one vertical slice end-to-end.
4. Keep naming consistent across tokens, props, and docs.

## Output Rules

- Preserve current project conventions unless a full migration is requested.
- Prefer semantic tokens in component styles.
- Keep token tiers explicit:
- `primitive`: raw scales
- `semantic`: intent-based aliases
- `component`: optional local aliases
- Explain tradeoffs briefly for architecture changes.

## Mapping Heuristics

- Map architecture to the current repo shape, not to a fixed template.
- Separate headless behavior and styled layers when complexity increases.
- Stabilize public component API early; evolve internals behind it.
