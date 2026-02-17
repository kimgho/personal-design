# State Matrix

Use this matrix to prevent state omissions in atom docs.

## Minimum Matrix

For each `(variant x size)`, confirm visibility of:

- `default`
- `disabled`
- `focus-visible`

For the primary/default variant, additionally confirm:

- `hover`
- `active`

If supported by component API:

- `loading`
- `invalid`
- `readonly`

## Naming Rules

- Name states by behavior, not styling:
- Good: `Disabled`, `FocusVisible`, `Loading`
- Avoid: `GrayButton`, `BlueOutline`

## Story-to-MDX Mapping

- Use existing story exports first.
- If MDX needs a state that stories do not expose, add a TODO section:
- `TODO: Add story export for FocusVisible state`

## Composite Dependency Rule

- Composite components must reference atom state rules rather than redefining them.
- If a composite introduces a new state requirement, push that requirement back into atom docs first.
