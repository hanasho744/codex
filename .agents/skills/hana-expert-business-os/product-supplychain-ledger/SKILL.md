# Product & Supply-Chain Ledger — Expert Standard

## Use for
Building or updating product ledgers, SKU structures, technical specs, BOM/component maps, supplier chains, production readiness, packaging/version control, and product lifecycle records.

## Core rule
Treat the product as a controlled configuration, not a single file or model name.

## Controlled object hierarchy
Product Family → Model → SKU → Market Version → Revision → BOM → Firmware/Software → Packaging/Label/Manual → Effective Lot.

## Minimum master fields
- Product family / customer project
- Brand / legal owner
- Model / internal SKU / customer SKU
- Market / language / channel
- Revision and change reason
- Dimensions / weight / material / key performance specs
- Chipset / MCU / sensors / modules / battery / connectivity
- Firmware / app / SDK / API / cloud dependency
- Supplier / factory / sub-supplier where verified
- MOQ / sample / pilot / MP / capacity / lead time
- Unit cost basis / tooling / NRE / packaging cost where available
- Certification / report number / holder / model mapping / validity
- Label / retail box / manual / carton revision
- JAN/EAN/UPC / serial / lot logic
- Logistics data: pcs/carton, dimensions, NW/GW, CBM, battery/DG status
- Approval status / customer approval date
- Effective lot / serial cutoff
- Old-material inventory and disposition

## Change-control gate
Any change to hardware, software, supplier, battery, radio module, model name, COO, importer, label claim, packaging, or manual must trigger an impact assessment across:
1. functionality/performance
2. certification/compliance
3. customer specification/contract
4. packaging/label/manual/barcode
5. sourcing/cost/MOQ/lead time
6. QC test plan/acceptance
7. logistics/DG/customs
8. after-sales/spares

## Packaging/version control
Maintain one Label & Packaging Master. Artwork is an output, not the source of truth.
Required linkage: Product Rev → Market Version → Label Rev → Box Rev → Manual Rev → Carton Rev → Barcode → Golden Sample → Effective Lot.

## BOM/supply-chain depth
Distinguish:
- confirmed manufacturer
- module supplier
- distributor/trader
- reference-design relationship
- inferred supplier
Never promote an inferred component or OEM relationship to fact without evidence.

## Production readiness status
Use gates such as:
Concept → EVT → DVT → PVT/Pilot → Golden Sample → MP Released → Shipment Released → Change Pending → Obsolete.
For each gate record owner, entry criteria, evidence, unresolved issues, and release decision.

## QC linkage
Each material specification should map to a verification method where possible: visual / functional / dimensional / electrical / RF / battery / aging / drop / waterproof / barcode scan / packaging reconciliation.

## Output
Dashboard/index → configuration master → spec/BOM map → supplier map → compliance mapping → packaging/version matrix → production milestones → QC/acceptance → cost/lead-time → change log → open issues.
