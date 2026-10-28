# Domain Abstraction

| Entity | Meaning | Key information |
|---|---|---|
| Depositor | Registered institution depositing boxes | Depositor ID, legal name, registration status |
| Seed box | Sealed container of samples of one species | Box ID, species ID, owner ID, status |
| Species | Crop-seed species represented in a box | Species ID, name, viability threshold |
| Chamber | Freezer storage area | Chamber ID, capacity, measured temperature, status |
| Staff member | Person performing vault operations | Staff ID, role, authorization |
| Vault authority | Role authorized to approve emergency release | Authority ID, authorization scope |
| Inspection | Check before initial acceptance or redeposit | Inspection ID, box ID, result, inspector, time |
| Audit event | Record of a system or physical action | Event ID, actor, timestamp, action, target, result |

## Ownership principle
The vault stores and safeguards boxes but does not become their owner. A box has exactly one recorded depositor-owner at a time under the supplied S4 rule. Emergency release is a controlled custody action and does not automatically transfer ownership.
