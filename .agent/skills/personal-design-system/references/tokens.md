# Tokens

## Goal

Define token layers clearly so components do not depend on raw palette values.

## Layers

1. `primitive`
- Raw scales only.
- Examples: color ramps, spacing scale, radius scale, font size scale.

2. `semantic`
- Intent-based aliases.
- Examples: `bg.surface`, `fg.primary`, `border.focus`, `interactive.primary.bg`.

3. `component` (optional)
- Local aliases for complex components.
- Add only when semantic tokens are not expressive enough.

## Rules

- Keep `primitive` stable and generic.
- Use `semantic` in component styles by default.
- Avoid direct `primitive` use in component code.
- Introduce new semantic keys before introducing new primitive colors.
