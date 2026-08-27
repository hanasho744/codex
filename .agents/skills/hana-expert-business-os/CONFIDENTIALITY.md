# Confidentiality & Public-Repository Data Policy

## Repository status
Treat this repository as public unless explicitly verified otherwise.

## Never persist into this repository
- real client names tied to confidential project facts
- private email/Slack/LINE contents
- bank/account numbers, personal financial records, credentials
- non-public quotations, internal margins, floor prices, negotiation notes
- supplier confidential drawings/specifications/BOMs
- unpublished customer product specifications or roadmaps
- personal addresses, phone numbers, identity documents
- source files or screenshots containing confidential data

## Allowed
- reusable methods and skill instructions
- synthetic examples
- anonymized benchmark cases that cannot be re-identified
- public facts already intended for publication
- generic schemas, templates, checklists, scoring rubrics

## Runtime rule
Private source material may be used transiently to complete the user's task through authorized tools. Do not convert that private material into a public repo artifact unless the user explicitly requests publication and the content is appropriate to publish.

## Benchmark rule
When a real project reveals a useful failure mode, abstract it into a synthetic regression case. Preserve the structural lesson but remove real names, dates, amounts, identifiers, unique product details, and other re-identification clues.

## Client deliverable rule
External deliverables may contain client-approved project information, but they belong in the intended private storage/delivery location, not in this public Skill repository.

## If uncertain
Default to not persisting sensitive content. Store only the framework or anonymized pattern.
