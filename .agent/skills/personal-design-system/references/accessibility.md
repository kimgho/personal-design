# Accessibility

## Goal

Make accessible behavior the default outcome of the system.

## Defaults

- Preserve visible focus indicator for keyboard users.
- Enforce sufficient text/background contrast for core tokens.
- Keep disabled states distinguishable without relying only on color.
- Support keyboard interaction for actionable components.

## Rules

- Build focus tokens into semantic layer (`border.focus`, focus ring color).
- Do not remove focus visuals in base styles.
- Validate contrast when introducing new semantic roles.
