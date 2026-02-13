# States

## Goal

Standardize interaction states so behavior is consistent across components.

## Core States

- `default`
- `hover`
- `active` or `pressed`
- `focus`
- `disabled`

## Token Pattern

- `interactive.<role>.bg`
- `interactive.<role>.bgHover`
- `interactive.<role>.bgPressed`
- `interactive.<role>.fg`
- `border.focus`

## Rules

- Define state tokens once and reuse.
- Ensure focus style is keyboard-visible by default.
- Do not create component-specific state names unless necessary.
