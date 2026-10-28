# Initial Constraints

## Capacity
For chambers 1–3: `stored_boxes(chamber) ≤ 50,000`  
For chamber 4: `stored_boxes(chamber) ≤ 20,000`

S2's “large number” is not a usable numeric constraint and should be removed or replaced.

## Temperature
S7 states: `temperature(chamber) ≤ -18°C`.  
S8 permits maintenance warming to `0°C`. These constraints conflict unless maintenance is defined as an explicit exception with safeguards.

## Ownership and release
- Each box has exactly one depositor-owner.
- Normal withdrawal: requester must be the recorded owner.
- Emergency release: requires a defined override authorization; the supplied S5 does not specify sufficient controls.

## Annual withdrawal
S10 suggests: `withdrawals(depositor, species, year) ≤ 0.20 × boxes(depositor, species)`.
The meaning of `year`, the denominator snapshot, integer rounding and emergency-release treatment are unresolved.
