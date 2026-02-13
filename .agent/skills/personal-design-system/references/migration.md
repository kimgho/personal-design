# Migration

## Goal

Move from ad-hoc styles to a consistent system without blocking delivery.

## Strategy

1. Choose one component as pilot (for example `Button`).
2. Migrate pilot to semantic tokens and standardized states.
3. Confirm naming and state model.
4. Repeat component by component.

## Rules

- Avoid big-bang rewrites.
- Do not expand token surface area before stabilizing semantics.
- Keep API stable while refactoring internals.
