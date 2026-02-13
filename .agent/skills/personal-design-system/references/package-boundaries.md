# Package Boundaries

## Goal

Separate concerns so the system can scale without tight coupling.

## Baseline Split

- `tokens`: design decisions and theme contracts
- `components`: UI implementation using tokens
- `docs` (optional): usage guidance, examples, and governance

## Rules

- Keep tokens free from component implementation details.
- Keep components dependent on tokens, not vice versa.
- Keep docs independent from runtime package logic.
