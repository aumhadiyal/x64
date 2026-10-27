# Mandatory Instruction: Read Before Every Task

**Before starting any user request, inspect and read this entire `AGENTS.md` file. This is mandatory for every task, without exception.**

1. Read all sections of this file before planning or implementing a task.
2. Follow the instructions, engineering standards, review procedures, and testing requirements defined here.
3. Do not skip, ignore, or selectively apply instructions because a task appears simple or familiar.
4. Before modifying any files, verify that you understand which instructions apply to the current task.
5. If any instructions conflict with the user's requirements, existing project constraints, or other repository rules, identify the conflict and resolve it appropriately before proceeding.
6. If this file cannot be accessed or read completely, stop and inform the user rather than assuming its contents.
7. After reading this file, evaluate the user's request using the Mandatory Prompt Quality Gate before proceeding.
8. Re-read the relevant instructions whenever necessary during implementation and review.

**Execution order:**

1. Read `AGENTS.md` completely.
2. Understand and evaluate the user's request.
3. Clarify material ambiguities before implementation.
4. Inspect the existing code and architecture.
5. Plan the smallest maintainable solution.
6. Implement the approved approach.
7. Perform all five mandatory review passes.
8. Run appropriate tests and build checks.
9. Review the final diff and report the results honestly.

**This workflow is mandatory for every task. Do not begin implementation before completing the applicable preliminary steps.**

## 0. Mandatory Prompt Quality Gate — STOP Before Coding

**Do not begin implementation until the task is sufficiently clear, understandable, and specified to a professional engineering standard.**

The quality of the implementation depends on the quality of the requirements. Never compensate for an incomplete prompt by inventing requirements, making unjustified assumptions, or immediately generating code.

### A. Understand the Request

Before doing any implementation work:

1. Read the entire request carefully.
2. Identify the actual problem being solved, not merely the requested surface-level change.
3. Identify the expected behavior, scope, constraints, dependencies, and acceptance criteria.
4. Inspect relevant existing code and project documentation to understand the current implementation.
5. Identify missing information, ambiguities, contradictions, and assumptions that could materially affect the solution.
6. Determine whether the requirements are sufficiently precise for a professional developer to implement and verify the task correctly.

### B. Apply the Prompt Completeness Gate

Evaluate whether the request adequately specifies the following, where relevant:

- **Objective:** What problem must be solved?
- **Expected behavior:** What should happen, and under what conditions?
- **Scope:** Which functionality is included and excluded?
- **Inputs and outputs:** What data enters the system, and what results are expected?
- **Business rules:** What constraints and decisions govern the behavior?
- **Edge cases:** How should invalid, missing, unexpected, or boundary inputs be handled?
- **Integration:** Which existing components, services, APIs, or database structures are involved?
- **Constraints:** What architectural, technical, performance, security, or compatibility requirements apply?
- **Acceptance criteria:** How will correctness be verified?
- **Testing:** What scenarios must be tested to establish that the implementation works?

Do not demand irrelevant information. Evaluate completeness according to the actual complexity and risk of the task.

### C. Stop and Ask Questions When Necessary

If important information is missing, ambiguous, contradictory, or insufficient to implement the request reliably:

1. STOP before modifying any files.
2. Explain what is unclear and why it matters.
3. Ask concise, specific questions that resolve the uncertainty.
4. Identify any conflicting requirements and request clarification.
5. Wait for the user's response before proceeding with implementation.

Do not silently choose between materially different interpretations.

Do not invent business rules, expected behavior, API contracts, database semantics, or architectural decisions without sufficient justification.

Do not proceed merely because one interpretation appears plausible.

### D. Professional English and Technical Clarity

Requirements, implementation plans, and technical explanations must use clear, grammatically correct English appropriate for an intermediate-to-professional software engineer.

- Use precise technical terminology.
- Express requirements in complete, unambiguous sentences.
- Separate objectives, constraints, expected behavior, and acceptance criteria.
- Avoid vague expressions such as "handle everything," "make it better," or "do it properly" without defining what they mean.
- Translate informal requests into precise technical requirements before implementation.
- Preserve the user's intended meaning when rewriting or clarifying a request.
- Use examples, structured lists, or acceptance criteria when they improve clarity.

**Important:** The user's English does not need to be perfect. The responsibility for identifying and clarifying technical ambiguity belongs to the agent, not to the user.

### E. Produce a Requirements Summary Before Implementation

Once the task is sufficiently clear, summarize:

1. The problem being solved.
2. The expected behavior.
3. The scope of the change.
4. Important constraints and dependencies.
5. Relevant edge cases.
6. The acceptance criteria and planned verification.

For substantial or architecturally significant changes, present the proposed implementation approach and wait for approval before making changes.

For small, straightforward tasks, provide a concise summary and proceed when no material ambiguity remains.

### F. No False Completeness

A long prompt is not necessarily a complete prompt, and a short prompt is not necessarily an incomplete one.

Do not demand unnecessary details when existing code, established conventions, or explicit requirements already resolve them.

The objective is to eliminate consequential ambiguity without creating pointless clarification loops.

**Mandatory rule: If a material requirement remains unclear, do not begin implementation. Ask first; code second.**

# Engineering Standards — Mandatory

## 1. Core Principles

- Correctness, maintainability, readability, and reliability take priority over implementation speed.
- Prefer the simplest solution that satisfies the actual requirements.
- Do not introduce unnecessary abstractions, interfaces, factories, wrappers, design patterns, or additional dependencies.
- Follow the existing architecture and conventions unless there is a concrete, documented reason to change them.
- Never confuse more code with better code.
- Do not implement hypothetical future requirements unless explicitly requested.
- Preserve existing behavior unless the task explicitly requires changing it.
- Never claim that code is correct, tested, or production-ready without supporting evidence.

## 2. Mandatory Investigation Before Coding

Before modifying any files:

1. Read the task and identify its explicit requirements.
2. Inspect the relevant implementation, callers, dependencies, and existing tests.
3. Identify existing services, utilities, components, and abstractions that can be reused.
4. Determine the project's architectural conventions and follow them.
5. Identify relevant edge cases, failure scenarios, and potential regressions.
6. Consider at least two implementation approaches for non-trivial changes.
7. Select the simplest maintainable approach and explain significant trade-offs.
8. Identify files that must change and avoid unrelated modifications.

Do not start implementation until the requirements and existing architecture are sufficiently understood.

If important requirements are ambiguous, ask for clarification rather than silently inventing business behavior.

## 3. Implementation Rules

- Keep changes focused on the requested task.
- Reuse existing functionality where appropriate.
- Avoid duplicated business logic.
- Keep responsibilities clear and cohesive.
- Avoid deeply nested conditionals and unnecessarily complicated control flow.
- Handle null values, invalid inputs, exceptions, and resource cleanup where relevant.
- Consider concurrency, transactions, and data consistency when applicable.
- Follow established dependency injection and configuration patterns.
- Use asynchronous operations appropriately without introducing unnecessary complexity.
- Never disable tests, weaken validation, suppress warnings, or bypass safeguards merely to make a change pass.
- Do not modify unrelated code to conceal a defect or simplify the review.
- Do not rewrite working code solely to match personal stylistic preferences.

## 4. Five Mandatory Review Passes

After implementation, perform five DISTINCT review passes.

### Pass 1: Requirements and Correctness

- Does the implementation satisfy every explicit requirement?
- Are all relevant execution paths correct?
- Are assumptions justified?
- Are boundary conditions handled?
- Does the implementation introduce unintended behavior?
- Is any requested functionality missing?

### Pass 2: Architecture and Maintainability

- Does the implementation follow existing project architecture?
- Are existing components reused appropriately?
- Have duplicate services, methods, or business rules been introduced?
- Are any abstractions unnecessary for the actual requirements?
- Are responsibilities clearly separated?
- Can the implementation be understood and maintained by another developer?
- Is there a simpler solution with equivalent behavior?

### Pass 3: Failure Modes and Edge Cases

- What happens with null, empty, malformed, or unexpected inputs?
- What happens when dependencies fail?
- Are exceptions handled appropriately?
- Are resources disposed of correctly?
- Could concurrency, retries, partial failures, or duplicate requests cause problems?
- Are authorization, validation, and data-integrity requirements preserved where relevant?
- Could the change expose sensitive information or introduce a security vulnerability?

Evaluate only the scenarios relevant to the affected functionality, but do not ignore a scenario merely because it was not explicitly mentioned in the prompt.

### Pass 4: Regression and Integration

- Have all affected callers and dependencies been considered?
- Are public interfaces and existing contracts preserved?
- Could the change break another module or existing workflow?
- Are database queries, transactions, and migrations consistent with the intended behavior?
- Are configuration changes compatible with existing environments?
- Are tests updated where necessary?
- Have unrelated files or behaviors been changed unnecessarily?

### Pass 5: Independent Final Review

Re-examine the final diff from the perspective of a skeptical senior engineer.

- Assume the previous four reviews may have missed something.
- Look for subtle defects, misleading assumptions, unnecessary complexity, and incomplete requirements.
- Recheck every finding from the previous reviews.
- Verify that earlier fixes did not introduce new problems.
- Confirm that the final diff contains only justified changes.
- Record unresolved concerns instead of pretending they have been fixed.

Do not merely repeat previous conclusions. Each pass must focus on its designated review objective.

## 5. Mandatory Fix-and-Recheck Cycle

Whenever a review discovers a legitimate issue:

1. Explain the issue and its impact.
2. Fix it if it is within the task's scope.
3. Re-examine the affected code.
4. Recheck related behavior and regression risks.
5. Revisit earlier review findings if the fix affects them.

Repeat this process until no additional actionable issues are found within the reviewed scope, or until a blocker requires human intervention.

Do not change correct code merely to manufacture additional review iterations.

## 6. Testing — After Code Review

Review the implementation before testing it. Then use testing to validate the reviewed design.

1. Identify the available test suites and relevant test commands.
2. Add or update unit tests for the changed behavior.
3. Add integration tests when interactions between components need verification.
4. Test important boundary conditions and failure paths.
5. Run relevant existing tests to detect regressions.
6. Run the appropriate build, compiler checks, and configured analyzers.
7. Run broader tests when the scope and available environment justify them.
8. Investigate failures instead of ignoring, suppressing, or working around them.
9. Fix defects discovered by testing and repeat the relevant review and test steps.
10. Re-review the final diff after all fixes.

Never claim a test passed unless it was actually executed and its result was checked.

If a test cannot be run because of missing infrastructure, permissions, dependencies, or environmental limitations, explain that limitation explicitly.

## 7. Performance and Resource Usage

For changes that could materially affect performance:

- Inspect relevant database queries and avoid unnecessary round trips.
- Consider N+1 query patterns, unbounded result sets, and excessive allocations.
- Evaluate caching only when justified by the actual access pattern.
- Consider timeouts, cancellation, and resource consumption.
- Avoid claiming performance improvements without evidence.
- Recommend load testing when realistic concurrency or workload characteristics matter.

Do not introduce speculative optimizations that make the implementation harder to maintain without a demonstrated benefit.

## 8. Scope and Repository Safety

- Inspect the working tree before modifying files.
- Never overwrite or discard unrelated user changes.
- Do not revert another developer's work without explicit authorization.
- Do not commit, push, merge, or deploy unless explicitly requested.
- Never hide failing tests or known defects.
- Keep changes reviewable and commits logically focused.
- If a requested change requires a substantial architectural redesign, explain the implications before proceeding.

## 9. Final Report

Before declaring the task complete, report:

1. What was implemented.
2. Why the chosen approach fits the existing architecture.
3. Which existing components were reused.
4. Any meaningful alternatives considered and why they were rejected.
5. The five review passes performed and their findings.
6. Tests and build commands actually executed, with results.
7. Any unresolved risks, limitations, or untested scenarios.
8. Any architectural concerns that require a human decision.

Distinguish verified facts from assumptions.

Do not describe a task as fully verified if required checks remain incomplete.

## 10. Final Acceptance Standard

A task is complete only when:

- Requirements have been addressed.
- The implementation has undergone all five review passes.
- Actionable defects found within scope have been resolved or explicitly reported.
- Appropriate tests and build checks have been executed where possible.
- The final diff has been reviewed after the last modification.
- Remaining limitations are disclosed.

**The objective is not to generate more code or spend more tokens. The objective is to deliver the smallest correct, maintainable, adequately verified change.**