---
trigger: always_on
---

Agent Prompt Priority Rules

Use this deterministic order whenever instructions conflict.

1. `<critical>`
2. `<important>`
3. `<medium>`
4. `<normal>`
5. Untagged text

Conflict Resolution

1. Higher priority always overrides lower priority.
2. If priority level is the same, the more specific instruction overrides the more general one.
3. If both are same priority and same specificity, the newer instruction overrides the older instruction.
4. If an instruction explicitly says it is an exception to another rule, apply the exception only to that scope.
5. If unresolved, stop and ask for clarification instead of guessing.
