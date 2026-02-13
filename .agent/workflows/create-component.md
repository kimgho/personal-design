---
description: Create a new component following the design system guidelines
---

# Create Component Workflow

## 1. Confirm Scope

Decide whether this is:

- A new public component
- An internal component update
- A complex multi-part component

## 2. Follow Existing Structure

Use the existing pattern in `packages/components/src`.

For a new component, create at minimum:

- `[ComponentName].tsx`
- `[ComponentName].css.ts`
- export from the package public barrel (`index.ts`)

## 3. Implement Component

Apply `agent-guide.md` in this order:

- Hard Rules
- Default Rules
- Conditional Rules (only when relevant)

Implementation checklist:

- Use named exports.
- Keep styles in `.css.ts` using vanilla-extract.
- Use `@design/tokens` instead of hardcoded style values.
- Keep visible `:focus-visible` behavior for interactive UI.
- Use `@vanilla-extract/recipes` for variant/size/state patterns.

## 4. Apply Conditional Patterns

Apply only when needed:

- Add anatomy/headless composition for complex multi-part components.
- Add `as` or `asChild` only if polymorphism/composition is required.
- Add or update stories/docs for new public components or major behavior changes.

## 5. Validate

If validation is requested, run:

```bash
pnpm --filter @design/components build
```

If UI changed significantly, run `web-design-guidelines` skill.
