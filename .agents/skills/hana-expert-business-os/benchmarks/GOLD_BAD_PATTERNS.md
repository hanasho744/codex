# Gold vs Bad Patterns

This file gives behavioral examples. Use the pattern, not the literal wording.

## 1. Evidence statement
### BAD
“NovaSense has its own factory with annual capacity of 1.2 million units.”

### GOLD
“The supplier website claims annual capacity of 1.2 million units (Evidence D). We have not yet found an independent factory record, audit report, or customer evidence confirming that capacity. Treat the figure as supplier-claimed until factory identity and line capacity are verified.”

Why Gold: fact/source/inference are separated and the verification action is explicit.

---

## 2. HS classification
### BAD
“HS Code: 8517.62 because the supplier provided this code.”

### GOLD
“8517.62 is a supplier-proposed candidate, not yet a final classification. Classification should be tested against the product’s principal function, communication architecture, standalone functionality, and relevant tariff headings. Record the candidate, rationale, competing headings, and exclusion logic before using it in formal customs documents.”

Why Gold: code selection is treated as classification work rather than vendor data entry.

---

## 3. Japan compliance
### BAD
“The product has TELEC and UN38.3, so it can be sold in Japan.”

### GOLD
“Wireless conformity and lithium-battery transport evidence address different obligations. Before concluding Japan market readiness, confirm the certification record’s holder/model/module linkage, the final Japan product configuration, any electrical-product applicability for supplied accessories, labeling/manual requirements, and claim-related regulatory exposure.”

Why Gold: regulatory domains are separated and configuration linkage is explicit.

---

## 4. Product version control
### BAD
“The product is the same except for a new battery, so existing packaging/certificates can continue.”

### GOLD
“Treat the battery substitution as a controlled engineering change. Review impact on BOM revision, UN38.3/SDS evidence, runtime/charging specification, shipping configuration, label/manual statements, certification scope where relevant, QC criteria, old-material disposition, and effective production lot before release.”

Why Gold: downstream change impact is mapped.

---

## 5. Pricing
### BAD
“Cost is RMB100, add 20% margin, sell at RMB120.”

### GOLD
“If RMB100 is the full commercial cost and target gross margin is 20%, the pre-tax selling price is RMB125 because `(Price - Cost) / Price = 20%`. If the intent is a 20% markup, RMB120 is correct. The quotation model must state which definition is used.”

Why Gold: mathematical terminology is exact.

---

## 6. Shipment incident
### BAD
“The warehouse caused the delay, but we quickly fixed it and the original vessel should be fine.”

### GOLD
“Warehouse unloading was paused pending additional product photos. The requested information was submitted at [time]. Separately, customs documentation required revision. The forwarder currently indicates the original vessel is likely to remain available, but ETD is not yet confirmed. Current action: obtain written sailing confirmation and update the recovery timeline.”

Why Gold: neutral, evidence-based, separates incidents, and does not upgrade ‘likely’ to ‘confirmed’.

---

## 7. Supplier recommendation
### BAD
“Supplier B is the best because the price is lowest.”

### GOLD
“Supplier B is the cost leader, but certification experience is currently unverified. If prototype speed and cost dominate, B can remain in the shortlist subject to a compliance-evidence gate. If Japan launch risk is the primary criterion, Supplier C currently has the stronger evidence profile despite the higher cost.”

Why Gold: recommendation is conditional on decision criteria and evidence quality.

---

## 8. Finance
### BAD
“The company received RMB980,000 this month.”

### GOLD
“Total bank inflows were RMB980,000, but that figure should not be treated as operating revenue. It includes inter-account transfer, investment redemption, and an unresolved inflow. Operating receipts should be reported only after classifying each credit and reconciling transfers/investment movements.”

Why Gold: cash movement and revenue are separated.

---

## 9. Project management
### BAD
“Today’s tasks: follow up all waiting projects.”

### GOLD
“Only waiting items whose follow-up trigger has matured should return to today’s action list. Future-execution items with preparation complete remain WAITING until the execution date. Completed coordination is removed from active workload.”

Why Gold: state semantics prevent cognitive-noise inflation.

---

## 10. Japanese client language
### BAD
「問題ないと思いますので、そのまま進めても大丈夫です。」

### GOLD
「現時点で確認できている範囲では、量産移行を妨げる重大な論点は確認されていません。ただし、認証対象モデルとの一致および適用開始ロットの2点は量産前に最終確認が必要です。」

Why Gold: avoids vague assurance and states evidence boundary plus remaining gates.

---

## 11. Executive summary
### BAD
Starts with company history, methodology, and 20 bullets of findings.

### GOLD
Starts with:
1. decision requested,
2. recommended direction,
3. three material reasons,
4. one or two critical unresolved risks,
5. exact next action.
Detailed history/methodology moves to body/appendix.

---

## 12. Client-facing evidence
### BAD
Adds many decorative product images to make a report “look researched.”

### GOLD
Uses images only when they prove or clarify something material: model identity, factory line, interface, packaging/label, certification mark, shipment evidence, dimensional comparison, or field deployment. Every evidentiary image has context/source/date when relevant.
