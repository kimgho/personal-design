# Semantic-Only Usage

## Goal

Ensure components consume semantic tokens by default and avoid direct primitive token usage.

## Rule

- In component styles, use `vars.colors.*` semantic paths.
- Do not reference primitive token objects directly inside component implementation.

## Allowed

- `vars.colors.bg.*`
- `vars.colors.fg.*`
- `vars.colors.border.*`
- `vars.colors.interactive.*`
- `vars.colors.status.*`

## Disallowed

- Importing or using `primitiveColors` in component packages
- Hardcoded hex/rgb values in component style definitions
- Bypassing semantic tokens for convenience

## Exceptions

- Token package implementation files (`packages/tokens/**`)
- Migration bridge code explicitly marked with a removal plan

## Verification

1. Add a lightweight check script that searches component code for `primitiveColors` usage.
2. Add a check for hardcoded hex values in component style files.
3. Fail CI when violations are found unless file path is in an explicit exception list.
