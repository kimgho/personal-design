# Naming

## Goal

Make token and API names predictable and role-based.

## Token Naming

- Prefer role names: `bg.surface`, `fg.muted`, `border.default`.
- Avoid visual-only names in semantic layer: `blue500`, `lightGray`.
- Use stable prefixes:
- `bg.*` for backgrounds
- `fg.*` for foreground/text/icon
- `border.*` for borders
- `interactive.*` for actionable states
- `status.*` for success/warning/danger

## Component API Naming

- Use consistent axes:
- `variant`
- `size`
- `tone` (optional)
- Keep prop names consistent across components.

## Rules

- Do not mix naming paradigms in one layer.
- Rename for clarity before adding more keys.
