# Domain-Specific Rubrics

Use together with `EXPERT_RUBRIC.md`. These are diagnostic sub-rubrics, not replacements for the 100-point master score.

## 1. Research Intelligence
A strong investigation should score itself on:
- entity resolution: legal entity / brand / factory / distributor / affiliate distinguished
- source diversity: official, regulator/database, technical, commercial, market channels
- chronology: current vs legacy facts separated
- product granularity: family → model → SKU/variant → component where material
- supply-chain role: brand owner / OEM / ODM / JDM / integrator / trading company clarified
- market evidence: channel, price, volume proxy, customer/use case, geography
- contradiction handling: competing claims recorded rather than silently chosen
- commercial implication: evidence converted into sourcing/market/partnership decision

NO-GO examples:
- copying company profile pages as due diligence
- claiming a factory relationship based only on marketplace listings
- mixing old discontinued models into current product architecture

## 2. Product & Supply-Chain Ledger
Required professional depth:
- Product Family / Model / SKU / Market Version / Revision are separate fields
- hardware, firmware, packaging, manual, barcode revisions can be traced
- major components have manufacturer/part number/status where available
- supplier role and manufacturing site are not conflated
- spec values include conditions/test basis where material
- certification linkage points to exact model/module/version
- change impact maps downstream consequences
- old material inventory and effective lot are controlled

NO-GO examples:
- one row per product name with mixed versions
- copying marketing specs without conditions
- assuming same enclosure means same regulatory configuration

## 3. Japan Compliance & Trade
Required professional depth:
- exact product configuration/use case defined first
- HS candidates include reasoning and exclusion logic
- customs classification separated from product regulation
- mandatory law separated from voluntary standard/customer preference
- certification number/holder/model/scope/validity linked where applicable
- importer/label/consumer-information responsibilities mapped
- battery/DG transport requirements separated from market-access requirements
- effective dates and current regulator sources used for time-sensitive rules

NO-GO examples:
- “has TELEC, therefore legal in Japan”
- choosing HS code from product name alone
- treating PSE/UN38.3/SDS as interchangeable compliance concepts

## 4. Commercial Pricing
Required professional depth:
- Incoterm and responsibility boundary explicit
- quantity/MOQ/tooling/sample/MP assumptions recorded
- cost bridge from ex-factory to commercial cost
- FX/tax/payment/warranty/service/risk basis explicit
- margin formula correctly distinguishes markup vs margin
- scenario/sensitivity for uncertain material drivers
- floor/target/offer price separated internally
- customer-facing price excludes internal negotiation intelligence

NO-GO examples:
- cost × fixed multiplier without cost basis
- mixing tax-inclusive and tax-exclusive prices
- treating freight quote for one quantity as linear for all quantities

## 5. Export Delivery Control
Required professional depth:
- milestone plan vs actual
- Incoterm/RACI responsibility
- evidence for booking, customs, warehouse, B/L, ETD/ETA
- deviation root cause separated from symptom
- containment/recovery/prevention defined
- customer impact quantified where possible
- revised schedule includes confidence/assumptions
- documentation version/approval status controlled

NO-GO examples:
- incident report as blame narrative
- stating vessel date without evidence status
- hiding unresolved forwarder/customs dependency

## 6. Client Reporting & Japanese Delivery
Required professional depth:
- executive decision on page/section one
- 3–5 critical findings, not 15 equal-weight findings
- findings tied to evidence and implication
- detailed appendix supports specialist audit
- Japanese terminology is industry-appropriate and consistent
- confirmed/provisional/unresolved/recommendation are visually or linguistically separated
- internal/external information firewall applied
- each requested question has an answered or unresolved status

NO-GO examples:
- research dump translated into Japanese
- long introduction before conclusion
- decorative images without evidentiary role

## 7. Project Control Tower
Required professional depth:
- project vs task vs waiting dependency distinguished
- one current state and one next milestone
- owner / waiting-for / due date / blocker / trigger defined
- stale tasks removed or archived
- value/risk/urgency determine prioritization
- WAITING work only resurfaces on trigger/follow-up date
- decisions and source links preserved

NO-GO examples:
- duplicating every email as a task
- keeping completed coordination work active
- status labels without defined transition criteria

## 8. Business Finance Analysis
Required professional depth:
- bank inflow/outflow classified before P&L interpretation
- transfers/investment movements excluded from operating revenue where appropriate
- posted vs pending and coverage period explicit
- customer/project/business-line attribution grounded in evidence
- cash flow separated from revenue/profit
- recurring vs one-time movements separated
- anomalies/unknowns surfaced rather than forced into categories
- management decision implications stated

NO-GO examples:
- bank credits = revenue
- investment redemption = operating income
- annualizing partial period without labeling assumption

## 9. Knowledge Assetization
Required professional depth:
- canonical file/location defined
- naming/version/change-log rules applied
- internal vs external assets separated
- source/evidence links preserved
- structured fields favored over prose where reusable
- dashboard/index connects project, deliverables, evidence, status
- archive/obsolete states defined
- another person can continue without reading the original chat

NO-GO examples:
- final answer exists only in chat
- multiple “final_v2_new_latest” files
- stale external documents remain mixed with current approved versions
