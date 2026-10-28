# Defect Taxonomy

| Category | Definition | Example from this specification |
|---|---|---|
| Ambiguity | A statement has two or more reasonable meanings. | S5: “any requesting party” does not say who may request or what authorization is needed. |
| Vagueness | A term has no precise or measurable meaning. | S6: “safe temperature” gives no numeric range. |
| Incompleteness | Required information or a necessary case is missing. | S1 does not state how depositor registration is verified or who approves it. |
| Contradiction | Two requirements cannot both be satisfied in the same stated condition. | S7 prohibits temperatures above -18°C, while S8 permits warming to 0°C without defining an exception. |
| Non-verifiability | The requirement cannot be objectively tested as written. | S12: “good audit trail” has no required fields, retention period or acceptance criteria. |
| Redundancy | Requirements repeat or overlap without adding a distinct obligation. | S6 and S7 both address temperature safety, but S6 adds no defined condition beyond the temperature subject already covered by S7. |
| Infeasibility | The requirement is impractical or physically/operationally impossible under the stated design. | S7 says “never” above -18°C, but S8 allows 0°C maintenance; without an explicit controlled exception, the combined requirement is not operationally achievable. |
| Untraceability | A requirement has no clear source, rationale, owner or link to a system function/test. | S2 says “large number” but gives no source, target or measurable capacity; no verification target can be traced to it. |

## Severity scale
- **Critical:** potential loss of seed integrity, unauthorized release, or serious ownership violation.
- **High:** major conflict or missing control affecting core operation.
- **Medium:** important missing definition or test condition.
- **Low:** documentation or traceability weakness with limited direct operational impact.

A single requirement may contain more than one defect. Defect IDs are separate findings, not a count of unique requirements.
