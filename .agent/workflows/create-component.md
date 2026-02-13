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
- Use headless-first composition for stateful/interactive behavior (Ark UI or Radix patterns).
- Keep behavior logic/headless layer separate from style layer.
- Follow design-system API conventions (`variant`, `size`, optional `tone`).
- Use anatomy-based parts for complex components (`Root`, `Trigger`, `Content`, etc.).
- Support controlled/uncontrolled patterns when state should be externally managed.

## 4. Create Stories And Tests

After component implementation:

- Add or update Storybook stories for the component.
- Add or update component tests where applicable.
- Include at least default and interactive states in stories.

Apply only when needed:

- Add `as` or `asChild` only if polymorphism/composition is required.

## 5. Run Validation Gate

Run these in order after stories/tests are updated:

```bash
pnpm --filter @design/components build
bash .agent/scripts/verify-component-conventions.sh
bash .agent/scripts/verify-semantic-usage.sh
```

If UI changed significantly, run `web-design-guidelines` skill (`.agent/skills/web-design-guidelines`) after the gate passes.
