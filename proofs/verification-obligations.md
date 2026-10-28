# Verification Obligations (Preliminary)

These are proof/test obligations, not completed proofs.

| ID | Property | Verification idea | Current limitation |
|---|---|---|---|
| VO-01 | Chamber capacity is never exceeded. | Boundary tests at limit and limit + 1; invariant check. | S2 and capacity counting need clarification. |
| VO-02 | Only active registered depositors can deposit. | Attempt deposit with active, suspended and unknown depositor. | Registration lifecycle undefined. |
| VO-03 | Normal withdrawal requires owner authorization. | Owner and non-owner withdrawal tests. | Emergency exception S5 unresolved. |
| VO-04 | Emergency release is authorized and audited. | Test authorized/unauthorized authority and requester. | S5 lacks emergency and authorization definitions. |
| VO-05 | Temperature stays within approved operating envelope. | Simulate threshold crossing and sensor failure. | S7/S8 conflict; sensor tolerances absent. |
| VO-06 | Low-viability sample is flagged within deadline. | Inject viability result below threshold and measure flag delay. | Threshold and “promptly” undefined. |
| VO-07 | Annual withdrawal quota is enforced. | Boundary test at 20% and one box above. | Year, denominator and rounding undefined. |
| VO-08 | Redeposit requires successful re-inspection. | Attempt redeposit with no inspection, failed inspection and passed inspection. | Inspection criteria undefined. |
| VO-09 | All required actions produce audit records. | Exercise each operation and verify required fields. | “All actions” and retention undefined. |
