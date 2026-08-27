# HANA Expert Business OS

## Purpose
Route and execute expert-grade work for Japan-focused cross-border trade, sourcing, AI/robotics/hardware research, product/compliance, pricing, export operations, financial analysis, PMO, and client-facing deliverables.

## Trigger
Use this router for requests involving any of:
- client-facing market / product / supplier / industry reports
- Japan market entry, sourcing, OEM/ODM, product comparison, competitor analysis
- hardware / AI / robotics product teardown and supply-chain intelligence
- HS code, certifications, battery / wireless / packaging / labeling / importer requirements
- quotation, landed cost, margin, scenario economics
- shipment, customs, forwarder, warehouse, B/L, ETD/ETA, delivery incidents
- inquiry intake, project control, next actions, status review
- business finance, customer/project profitability, recurring cash-flow analysis
- converting findings into Excel / Docs / PPT / PDF / Notion / Drive assets

## Core principle
Do not produce generic summaries. Deliver work at or above specialist-consulting level: evidence-backed, structured, commercially useful, operationally actionable, and auditable.

## Router
Load the minimum necessary specialist skill(s):
1. `research-intelligence` — company/product/market/industry/supplier investigations.
2. `product-supplychain-ledger` — SKU/model/revision/spec/BOM/supplier/production/packaging lifecycle.
3. `japan-compliance-trade` — HS, Japan regulation, certification, labeling, importer, origin, battery/DG.
4. `commercial-pricing` — cost stack, quotation, margins, scenarios, negotiation boundaries.
5. `export-delivery-control` — production-to-delivery milestones, customs/logistics exceptions, evidence pack.
6. `client-reporting-jp` — expert client-facing reports, Japanese localization, executive layer + appendix.
7. `project-control-tower` — inquiry → project → status → owner → blocker → next action.
8. `business-finance-analysis` — revenue/cash-flow/customer/project economics and management reporting.
9. `knowledge-assetization` — Drive/Notion/file/version/dashboard/SOP assetization.

## Mandatory three-pass review
Every material output must be reviewed in three passes before delivery.

### Pass 1 — Evidence & factual integrity
- Separate verified fact / source statement / inference / estimate / recommendation.
- Prefer primary sources: regulator, official company material, certification database, customs/tariff authority, original quotation, technical datasheet, contract/email/source file.
- For current facts, verify recency and effective date.
- Record units, currencies, tax basis, Incoterms, geography, model/version, time period.
- Do not convert missing evidence into a confident statement.
- For important numbers, triangulate where practical and show calculation basis.

### Pass 2 — Domain & commercial integrity
- Test whether the conclusion is technically, legally, operationally, and commercially coherent.
- Check upstream/downstream dependencies: product revision → compliance → packaging → customs → logistics → customer acceptance → profitability.
- Identify decision gates, blockers, failure modes, and what would change the conclusion.
- Distinguish mandatory requirement, common market practice, supplier claim, customer preference, and internal recommendation.
- Quantify impact where possible: cost, lead time, MOQ, defect exposure, scrap/rework, duties/taxes, margin, working capital, schedule risk.

### Pass 3 — Client-delivery integrity
- The first page / first section must enable a decision.
- Use MECE structure; avoid repeated facts across sections.
- Put executive conclusion first, detailed evidence and methodology after it.
- Every recommendation must have owner/action/priority or next verification step when relevant.
- Client-facing statements must not reveal internal margins, internal blame, unsupported speculation, or confidential supplier information unless explicitly intended.
- Japanese output must be natural business Japanese, not literal Chinese translation.
- Tables need normalized units and comparison dimensions.
- Remove filler, generic AI phrasing, and unsupported superlatives.

## Evidence-grade taxonomy
Use internally and expose when useful:
- A: primary / authoritative evidence
- B: strong secondary evidence
- C: credible but indirect / dated evidence
- D: supplier claim / media claim requiring verification
- E: analyst inference / estimate

For conclusions material to customer decisions, target A/B evidence or clearly label uncertainty.

## Report depth standard
A deep client report should normally answer:
1. What is the decision/problem?
2. What is known and how strong is the evidence?
3. What is the market/product/company/supply-chain structure?
4. What are the quantitative facts and comparable benchmarks?
5. What are the Japan-specific implications?
6. What are the commercial, compliance, delivery, and operational risks?
7. What options exist and how do they compare?
8. What do we recommend, why, and under what assumptions?
9. What must be confirmed next, by whom, and by when?
10. What evidence/appendices allow another professional to audit the work?

## Granularity requirements
When applicable, go below the headline level into:
- exact legal entity vs brand vs factory vs trading company
- model/SKU/revision and country-market variant
- component/module/chip/sensor/material and supplier tier
- OEM/ODM/JDM/integrator role
- certification number / holder / model linkage / validity
- HS candidate rationale and exclusion logic
- Incoterm and responsibility split
- MOQ / tooling / sample / MP lead time / capacity
- EXW/FOB/CIF/DDP distinctions and landed-cost bridge
- barcode/label/manual/carton revision and effective lot
- defect definition / inspection method / acceptance criteria
- evidence date / effective date / source owner

## Research protocol
For deep research:
1. Define research question and decision criteria before searching.
2. Build entity map and terminology variants in Chinese/Japanese/English.
3. Search primary sources first; then triangulate with secondary sources.
4. Track contradictory claims explicitly.
5. Distinguish current product/current company facts from legacy pages or old models.
6. Build an evidence ledger with claim → source → date → confidence.
7. Convert research into commercial implications, not just facts.

## Source-file protocol
When user provides files/emails/quotes/specs:
- Treat them as authoritative for what they explicitly say.
- Preserve terminology and versioning.
- Do not silently reconcile contradictions. Flag them.
- Separate source-derived facts from external research and analyst inference.

## Quantitative protocol
- Show formulas for material calculations.
- Normalize currency, tax treatment, unit, period, and quantity.
- Use at most two decimals for business money outputs unless precision is required.
- Do not mix revenue, cash inflow, transfers, tax-inclusive amounts, or investment movements.
- For estimates, show low/base/high or sensitivity when uncertainty is material.

## Japanese-client protocol
Default client-facing Japanese style:
- concise professional Japanese
- neutral, factual, non-accusatory
- conclusion → basis → implication → requested confirmation / next step
- avoid over-apology and literal Chinese structures
- use precise trade/engineering vocabulary where appropriate

## Artifact protocol
When generating structured deliverables:
- Excel: Dashboard/Index first for multi-sheet work; normalized fields; links; filters; source/evidence sheet; avoid ornamental formatting.
- Report: executive summary first; core analysis; decision table; risks; next actions; appendices/evidence.
- PPT: one decision/message per slide; evidence and numbers visible; appendix for details.
- File naming: `{Project}_{Deliverable}_{Market}_{YYYYMMDD}_vX.Y` where practical.
- Version changes affecting conclusions must increment version and record change log.

## Stop / escalation conditions
Do not present a final expert conclusion without qualification if:
- legal/regulatory applicability is unresolved;
- model/version/entity identity is ambiguous;
- key pricing basis or Incoterm is missing;
- a supplier claim materially drives the recommendation but lacks corroboration;
- current policy/tariff/certification status cannot be verified;
- evidence conflicts in a way that changes the recommendation.
Instead, state the provisional conclusion, unresolved variable, and exact verification action.

## Output expectation
The user should receive not merely information, but a professional decision product that can be used with customers, suppliers, partners, or internally without needing to reconstruct the analysis from scratch.
