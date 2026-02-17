---
name: atom-docs-mdx
description: Create and maintain Storybook MDX documentation for atom UI components (for example Button, Input, Checkbox) with a state-first structure. Use when converting `*.stories.tsx` into `*.mdx`, documenting component states/variants/sizes, or preparing atom docs that downstream composite components (for example forms) depend on.
---

# Atom Docs MDX

Document atom components with a consistent, state-first MDX structure so composite components can reuse behavior and visual rules without redefining them.

## Reference Routing

Load only the relevant reference file:

- Doc section order and required content: `references/atom-docs-structure.md`
- State coverage matrix and naming rules: `references/state-matrix.md`

## Workflow

1. Read the target `*.stories.tsx` and component props/types.
2. Extract variant, size, and interaction states from stories and argTypes.
3. Generate or update `*.mdx` with the required section order.
4. Ensure every interactive state has at least one visible story example.
5. Add "Composite Usage Notes" so parent components (for example form flows) can rely on atom-level rules.

## Output Rules

- Keep MDX content implementation-aware but user-facing.
- Prefer documenting behavior contracts over CSS implementation detail.
- Keep atom docs self-contained so composite docs reference atom docs instead of repeating them.
- If state examples are missing in stories, note the gap and add TODO entries in the MDX.
