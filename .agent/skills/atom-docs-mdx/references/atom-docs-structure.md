# Atom MDX Structure

Use this section order for every atom component document.

## 1. Overview

- Define the component role in one or two sentences.
- Clarify where it should and should not be used.

## 2. Import

- Show canonical import path.

## 3. Playground

- Provide a single interactive playground (`<Controls />`) with sensible defaults.

## 4. Variants

- Document all visual variants with side-by-side examples.
- Add short intent notes (for example "primary action", "quiet action").

## 5. Sizes

- Show all supported sizes in one canvas.
- Clarify if size affects only height/spacing or typography too.

## 6. States

- Cover interaction and semantic states at minimum:
- `default`, `hover`, `focus-visible`, `active`, `disabled`, `loading` (if supported), `invalid` (if applicable)
- If a state is not supported, explicitly state that.

## 7. Accessibility Notes

- Include required keyboard behavior and ARIA expectations.
- Mention any constraints for icon-only labels, disabled behavior, or focus indication.

## 8. Composite Usage Notes

- Explain how parent components should consume this atom.
- Example: "Form submit buttons must use `variant=solid`, `size=medium`, and must preserve focus ring."
- Avoid redefining atom behavior in composite docs.

## 9. Related Stories

- Link back to story exports used by this page.
- Keep story names and MDX labels synchronized.
