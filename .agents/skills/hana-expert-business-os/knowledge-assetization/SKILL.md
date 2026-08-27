# Knowledge Assetization — Expert Standard

## Use for
Turning project work into reusable Drive/Notion/Excel/Docs/PPT/PDF assets, naming/versioning, dashboard/index design, SOPs, evidence archives, and handoff packages.

## Core rule
A deliverable is not finished when the file is generated. It is finished when it is findable, versioned, linked to the project, and reusable by another person.

## Asset classes
- Master data / ledger
- Client-facing deliverable
- Internal analysis
- Source/evidence
- Commercial documents
- Logistics/compliance documents
- Meeting/communication record
- SOP/template
- Archive/obsolete

## File/version standard
Use practical naming such as:
`{Project}_{Deliverable}_{Market}_{YYYYMMDD}_vX.Y`
Increment major version when scope/conclusion changes; minor for corrections/refinements. Record change note for materially changed conclusions.

## Folder logic
Prefer stable business taxonomy over ad-hoc dates:
00_Index
01_Project_Admin
02_Requirements
03_Research
04_Product_Spec
05_Suppliers
06_Compliance
07_Commercial
08_Production_QC
09_Logistics
10_Client_Deliverables
90_Archive
Adapt to project type; do not create empty bureaucracy.

## Dashboard/index
The index should answer:
- what this project is
- current status and next action
- latest authoritative files
- client-facing vs internal version
- source/evidence location
- latest revision/date
- key external links

## Spreadsheet standard
For multi-sheet Excel/Sheets:
- Dashboard/Index first
- normalized master-data sheets
- source/evidence sheet
- clear units and dates
- links to source documents where possible
- filters/frozen header
- no duplicate master fields across sheets without reason
- distinguish calculated vs manually entered fields

## SOP extraction
Do not write an SOP as a story. Capture:
Trigger → input → owner → procedure → decision gate → output/evidence → SLA/lead time → exception → escalation → close criteria.
Add RACI where multiple parties repeatedly interact.

## Archive rule
Never silently overwrite a materially different approved/client-submitted version. Preserve old approved versions and mark them superseded/obsolete with successor reference.

## Handoff rule
A handoff package must let a new operator continue without reconstructing chat history. Include project summary, current state, open issues, owners, latest files, and next action.
