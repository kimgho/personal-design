---
trigger: always_on
description: "Global coding standards and design system rules for the project."
---

Agent Guidelines & Rules
Apply these rules in this order: Hard Rules -> Default Rules -> Conditional Rules.

<critical>
Hard Rules

1. Use TypeScript strict typing.
- Do not use `any` or `@ts-ignore` unless the user explicitly requests it.

2. Use the project styling system.
- Use `@vanilla-extract/css` and project tokens.
- Do not introduce inline styles, CSS Modules, Styled Components, or Tailwind unless explicitly requested.

3. Use design tokens for style decisions.
- Do not hardcode colors, spacing, typography, radius, or shadows in component styles.

4. Preserve accessibility basics.
- Keep visible `:focus-visible` treatment.
- Do not remove focus outline without an accessible alternative.
- Use semantic interactive elements (`button`, `a`, proper form semantics).
</critical>

<normal>
Default Rules

1. Use React functional components and named exports.
2. Colocate styles in `[Component].css.ts`.
3. Use package barrel exports (`index.ts`) for public API.
4. Use `@vanilla-extract/recipes` for component variants and derive prop types via `RecipeVariants`.
5. Prefer simple robust implementations over over-engineered abstractions.
6. Reuse existing tokens/components before adding new ones.
</normal>

<important>
Conditional Rules

Apply these only when relevant:

1. Complex multi-part components:
- Use anatomy-based composition (`Root`, `List`, `Trigger`, `Content` style split).
- Separate behavior/headless logic from styling.

2. If headless primitives are already used in that area:
- Follow existing patterns with Ark UI or Radix.
- Keep API compatible with current component conventions.

3. Documentation and stories:
- Add or update stories/docs when adding a new public component or significantly changing behavior.

4. Performance-sensitive assets:
- Set explicit image dimensions and use lazy loading for off-screen content where applicable.
</important>

Skills

- `web-design-guidelines`: run when validating UI/UX compliance for new or heavily refactored UI components.
