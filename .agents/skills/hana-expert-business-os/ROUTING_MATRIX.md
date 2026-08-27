# HANA Expert Business OS — Routing Matrix

Use this matrix after loading the main router. Select the smallest skill set that covers the decision problem. Add Client Reporting + Evaluation for any formal external deliverable.

| User intent / task pattern | Primary skill | Secondary skills | Mandatory external layer |
|---|---|---|---|
| investigate company / supplier / brand / competitor | Research Intelligence | Product Ledger; Japan Compliance | Client Reporting + Evaluation |
| product teardown / spec ledger / SKU / BOM / revision | Product & Supply-Chain Ledger | Research; Japan Compliance | Client Reporting + Evaluation if external |
| Japan market access / certification / HS / labeling / battery | Japan Compliance & Trade | Product Ledger; Research | Client Reporting + Evaluation |
| quotation / price model / margin / MOQ scenario | Commercial Pricing | Export; Compliance; Product Ledger | Client Reporting + Evaluation if sent externally |
| shipment / customs / forwarder / warehouse / B/L / delay | Export Delivery Control | Project Control; Compliance | Client Reporting + Evaluation for incident/client report |
| Japanese report / proposal / comparison / executive memo | Client Reporting & Japanese Delivery | whichever domain skills produced the facts | Evaluation + Release Gate |
| inquiry intake / project review / waiting / blockers / daily priorities | Project Control Tower | originating domain skill | Client Reporting only if external status report |
| bank statement / cash flow / customer/project income | Business Finance Analysis | Project Control; Pricing | Client Reporting + Evaluation if external |
| save to Drive / Notion / build dashboard / SOP / version archive | Knowledge Assetization | originating domain skill | external/internal separation |

## Composite routing patterns

### Supplier selection for a Japan hardware client
`Research Intelligence + Product Ledger + Japan Compliance + Commercial Pricing + Client Reporting + Evaluation`

### New hardware inquiry → quotation
`Project Control + Product Ledger + Research (if unknown product/supplier) + Japan Compliance + Commercial Pricing`

### Prototype-development supplier comparison
`Research Intelligence + Product Ledger + Commercial Pricing + Client Reporting + Evaluation`

### Production revision change before Japan shipment
`Product Ledger + Japan Compliance + Export Delivery Control + Knowledge Assetization`

### Shipment incident report to Japanese client
`Export Delivery Control + Project Control + Client Reporting + Evaluation`

### Company monthly management review
`Business Finance Analysis + Project Control + Knowledge Assetization`

### Deep market/industry report
`Research Intelligence + relevant Product/Compliance/Pricing skills + Client Reporting + Evaluation`

## Trigger hierarchy
When multiple skill triggers match, prioritize in this order:
1. factual/source domain needed to establish truth,
2. product/configuration domain needed to identify exact object,
3. legal/compliance domain if market-access or customs conclusion depends on it,
4. commercial/pricing/export domain for execution/economics,
5. client-delivery layer last,
6. knowledge-assetization after the business result is stable.

## Avoid over-routing
Do not load every skill by default. Extra skills add context and can dilute reasoning. Use only skills that materially affect the conclusion.

Examples:
- Simple Japanese email based on already-confirmed facts: Client Reporting only; do not trigger full Research.
- Pure project-status review: Project Control only unless factual project details must be re-investigated.
- Product price comparison with no Japan/compliance issue: Commercial Pricing + Product Ledger as needed.

## Escalation conditions
Add another skill when:
- a new downstream dependency appears,
- the conclusion changes based on product configuration or market,
- a legal/compliance assertion becomes material,
- cost ownership changes with Incoterm/logistics,
- the task changes from internal analysis to external client delivery.
