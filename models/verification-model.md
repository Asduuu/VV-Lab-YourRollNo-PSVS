# Verification Model (Initial)

## States of a seed box
`Submitted → Inspected → Accepted/Stored → Withdrawn → Re-inspection → Accepted/Stored`

Possible exception states requiring stakeholder definition:
`Quarantined`, `Rejected`, `Emergency-released`, `Lost/Damaged`.

## Main invariants to verify
1. Every accepted box has exactly one registered depositor-owner.
2. Every stored box is assigned to exactly one chamber.
3. Stored-box count in a chamber does not exceed its configured capacity.
4. A normal withdrawal is authorized by the recorded owner.
5. An emergency release has a valid authority approval and recorded requester.
6. A redeposited box has passed re-inspection.
7. Annual species withdrawal totals do not exceed the approved quota calculation.
8. Temperature excursions and maintenance exceptions are recorded.

These are candidate verification properties. The conflicts and undefined terms in the source requirements must be resolved before treating them as final formal invariants.
