# Benchmark Cases B01–B09

All scenarios are synthetic and contain no real client data.

---

## B01 — Supplier / Company Due Diligence
### Scenario
A Japan-facing trading team is evaluating “NovaSense” wearable devices. Search results show NovaSense as a brand, a Shenzhen company with a similar name, two marketplace sellers, and a factory claiming OEM capability.

### Input evidence
- official brand website lists products but no legal-entity footer
- corporate registry shows `Shenzhen Novasense Technology Co., Ltd.`
- one marketplace seller says “manufacturer”
- a certification record lists another company as certificate holder
- factory page claims 3 production lines and 1.2M units/year
- two current SKUs and three legacy models appear across sources

### Hidden traps
- brand owner may not equal factory
- certificate holder may be module supplier or manufacturer
- marketplace seller status is weak evidence
- legacy/current product confusion
- capacity claim has no corroboration

### Required skills
`research-intelligence` + `product-supplychain-ledger` + `client-reporting-jp` when external.

### Minimum expert analysis
- entity map with confidence/evidence grade
- current vs legacy product architecture
- explicit role hypotheses: brand/OEM/factory/certificate holder/distributor
- evidence ledger for each critical claim
- Japan-market relevance and unresolved diligence items
- recommendation: proceed / conditional / hold, with verification actions

### Gold characteristics
A Gold answer says what is known, what is merely claimed, and what relationship cannot yet be proven. It does not collapse all entities into “the manufacturer.”

### Fatal defects
- declaring the marketplace seller the factory as fact
- presenting claimed capacity as verified capacity
- mixing discontinued models into current comparison

### Evaluation question
Could a sourcing manager use this report to decide whether to request samples, conduct factory audit, or reject the supplier?

---

## B02 — Product, SKU & Revision-Control Ledger
### Scenario
A wearable product has one base hardware platform, black/white colors, Japan/US variants, firmware R2.4/R2.5, new battery vendor from Lot 2609, revised Japanese manual, and old packaging inventory.

### Input evidence
- model: WX100
- JP SKU: WX100-BLK-JP / WX100-WHT-JP
- US SKU: WX100-BLK-US / WX100-WHT-US
- battery changed from Cell-A to Cell-B starting Lot 2609
- firmware R2.5 changes BLE behavior
- JP manual M03 replaces M02
- 1,800 pcs of JP boxes P02 remain in stock
- certification evidence only explicitly references original wireless configuration

### Hidden traps
- color vs market variant vs revision are different dimensions
- battery change may affect transport/compliance evidence
- firmware change may affect tested behavior
- old boxes cannot automatically be consumed
- certification linkage needs review, not assumption

### Minimum expert analysis
- normalized product master
- revision/effective-lot table
- change-impact matrix
- obsolete-material disposition options
- certification/transport revalidation questions
- release gate before MP/next shipment

### Gold characteristics
The answer creates traceability from SKU → market → HW/FW → packaging/manual → effective lot and clearly separates confirmed changes from impact requiring verification.

### Fatal defects
- one “WX100” row combining all variants/revisions
- saying old boxes can be used because product appearance is unchanged
- assuming prior certification automatically covers R2.5/Cell-B

---

## B03 — Japan Compliance / HS / Wireless / Battery
### Scenario
A small wearable records activity data, connects to a phone by Bluetooth, contains a rechargeable lithium cell, and the supplier markets “blood pressure trend” in another country. The Japan version will hide this feature.

### Input evidence
- Bluetooth radio module has a Japanese certification record
- charger input 5V DC, no AC adapter included
- lithium cell has UN38.3 report from cell maker
- supplier suggests HS 8517.62
- product is not marketed as a medical device in Japan
- exact module-to-product model mapping has not yet been fully documented

### Hidden traps
- HS code requires classification reasoning, not supplier acceptance
- radio certification record may be module-level
- UN38.3 is transport evidence, not Japan market access
- PSE applicability depends on exact supplied electrical articles/configuration
- health claims may trigger additional regulatory risk

### Minimum expert analysis
- product configuration/use-case definition
- HS candidate(s) + rationale + exclusions
- wireless certification linkage check
- PSE applicability analysis by supplied components
- lithium transport evidence chain
- labeling/manual claim-control guidance
- importer/market responsibilities and unresolved verification actions

### Gold characteristics
The answer separates customs, radio law, electrical-product rules, dangerous goods, and health-claim risk into distinct legal/operational tracks.

### Fatal defects
- “TELEC + UN38.3 = Japan compliant”
- definitive HS code with no classification basis
- stating PSE required/not required without defining included charger/power configuration

---

## B04 — Commercial Quotation & Margin Logic
### Scenario
A Japanese customer requests 1,000 / 3,000 / 10,000 units. Supplier EXW price decreases with volume. Tooling, inspection, export, freight, payment fees, warranty reserve, and project-management effort differ by scenario.

### Synthetic inputs
- EXW: RMB 82 / 78 / 73
- packaging: RMB 6 / unit
- one-time tooling: RMB 30,000
- inspection: RMB 4,500 per lot
- export/documentation: RMB 3,000 per shipment
- freight: RMB 18,000 / 35,000 / 82,000
- bank/FX allowance: 1.5%
- warranty reserve: 1.0% of product procurement
- target gross margin: 18%
- Japanese quotation should be JPY, tax basis stated separately

### Hidden traps
- tooling allocation changes by volume
- margin ≠ markup
- freight is not linear
- FX allowance must have a base
- quotation basis/Incoterm must be explicit

### Minimum expert analysis
- scenario landed/commercial-cost bridge
- target sell price using correct gross-margin formula
- sensitivity to FX/freight
- target / offer / floor logic internally
- customer-facing price table without internal floor/margin disclosure

### Gold characteristics
Every price can be recomputed from visible internal assumptions and the customer version clearly states scope, Incoterm, validity, quantity, and exclusions.

### Fatal defects
- cost × 1.18 presented as 18% gross margin
- mixed CNY/JPY without FX basis
- tax-inclusive/exclusive ambiguity

---

## B05 — Export Shipment Exception / Incident Report
### Scenario
Goods were planned to enter a forwarder warehouse Monday, but the warehouse refused unloading pending additional product photos. Information was supplied quickly; customs documents later needed revision; vessel departure may still be achievable but is not confirmed.

### Input evidence
- booking confirmation
- warehouse message requesting additional photos
- time-stamped response showing prompt submission
- customs document revision history
- forwarder message: vessel schedule “likely unchanged,” confirmation pending

### Hidden traps
- “likely” is not confirmed ETD
- warehouse issue and customs-document issue are separate events
- report must avoid blame
- client needs recovery plan and next confirmation point

### Minimum expert analysis
- planned vs actual timeline
- evidence-backed event chronology
- current status and uncertainty
- impact on ETD/ETA
- containment/recovery actions
- recurrence-prevention checklist
- customer-facing neutral Japanese summary

### Gold characteristics
The report explains what happened, current shipment state, what is confirmed vs pending, and what process control should change next time.

### Fatal defects
- stating the original vessel is confirmed when only “likely”
- blaming warehouse/forwarder without evidence
- omitting unresolved confirmation owner/time

---

## B06 — Japanese Client-Facing Decision Report
### Scenario
A client asks which of three hardware suppliers should be shortlisted for prototype development.

### Inputs
Supplier A: strongest engineering response, highest NRE, 4-month schedule.
Supplier B: lowest price, unclear certification experience, 3-month schedule.
Supplier C: best Japan export references, medium price, weakest RTOS capability.
Evidence quality differs by field.

### Hidden traps
- cheapest ≠ recommended
- one overall score can hide gating requirements
- unsupported “best supplier” language
- internal negotiation comments must not leak

### Minimum expert analysis
- first-page recommendation and decision criteria
- gate criteria vs weighted criteria
- normalized comparison table
- evidence/confidence marks
- scenario recommendation by project priority
- Japanese natural business prose
- unresolved confirmation list

### Gold characteristics
The executive section is brief enough for management, while appendix shows the detailed scoring/evidence logic. Recommendation changes if the project prioritizes RTOS vs Japan compliance speed.

### Fatal defects
- one winner selected without decision criteria
- internal supplier floor price or negotiation notes included
- Japanese text reads as literal translation or uses false certainty

---

## B07 — Project Control / WAITING-State Hygiene
### Scenario
Ten project items include: three completed, two waiting for client response, one waiting for a future execution date, two active research items, one blocked by supplier quotation, and one stale item with no owner.

### Hidden traps
- completed items should not remain active
- WAITING items should not be treated as daily actions until trigger
- blocked vs waiting-for-response are different
- no-owner stale item requires escalation

### Minimum expert analysis
- normalize project/state/next milestone/owner/waiting-for/deadline/trigger
- identify today’s Top 3 based on urgency/value/risk
- remove noise from completed/parked items
- create follow-up triggers for waiting items
- flag orphan/stale work

### Gold characteristics
The board tells the user exactly what requires attention now, what is safely waiting, and what should reappear later.

### Fatal defects
- listing all ten as “today’s tasks”
- creating duplicate tasks from every message
- marking future-execution item overdue when preparation is already complete

---

## B08 — Business Finance / Bank-Flow Classification
### Scenario
A company bank statement contains customer receipts, owner transfer, transfer between company accounts, investment subscription/redemption, supplier payment, bookkeeping fee, refund, and one unknown inward transfer.

### Synthetic transactions
- +120,000 customer deposit
- +300,000 transfer from company savings account
- +500,000 investment redemption
- +60,000 unknown inflow
- -450,000 investment subscription
- -80,000 supplier payment
- -3,000 bookkeeping fee
- -20,000 customer refund

### Hidden traps
- inflows are not all revenue
- investment redemption is not operating revenue
- inter-account transfer should not inflate cash generation
- unknown inflow must remain unresolved until evidenced
- deposit vs earned revenue depends on accounting/business context

### Minimum expert analysis
- classify every transaction with confidence
- separate operating receipts, transfers, investment movements, expenses, refunds, unknowns
- calculate operating cash receipts only from justified categories
- show reconciliation to statement net movement
- list unresolved evidence requests

### Gold characteristics
The analysis can explain why bank balance moved without falsely calling all inflows “income.”

### Fatal defects
- total positive entries reported as revenue
- investment redemption counted as sales
- unknown inflow silently forced into customer revenue

---

## B09 — Knowledge Assetization / Version Control
### Scenario
A project folder contains `proposal_final.xlsx`, `proposal_final2.xlsx`, `proposal_new_final.xlsx`, a client PDF, old supplier quotation, screenshots, and a current approved specification. Nobody knows which file is current.

### Hidden traps
- renaming alone does not establish authoritative status
- internal/external variants need separation
- obsolete source evidence should be retained but archived
- dashboard should link canonical assets rather than duplicate them

### Minimum expert analysis
- define canonical folder structure
- classify source / working / internal / external / approved / obsolete
- rename using deterministic naming convention
- create version/change log and master index
- preserve evidence links
- define approval/current markers
- archive obsolete assets without deleting audit trail

### Gold characteristics
Another team member can find the approved current deliverable, source evidence, and prior versions without reading chat history.

### Fatal defects
- deleting obsolete evidence with no trace
- keeping several files labeled “final”
- mixing internal margin model with external client package
