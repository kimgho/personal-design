# Variants And Sizes

## Goal

Keep component API shape consistent and scalable.

## Variant Strategy

- Start with a small shared set:
- `solid`
- `outline`
- `ghost`
- Add new variants only when behavior and semantics differ clearly.

## Size Strategy

- Standardize sizes globally:
- `small`
- `medium`
- `large`
- Map each size to spacing and typography tokens.

## Rules

- Keep variant meaning consistent across components.
- Keep size meaning consistent across components.
- Avoid one-off size names tied to a single component.
