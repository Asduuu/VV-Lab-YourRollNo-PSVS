# Polar Vault Verification & Specification (PSVS)

**Repository:** `VV-Lab-<RollNo>-PSVS`  
**Project:** Requirements defect analysis for a polar seed vault  
**Course:** Principles of Software Verification and Specification (PSVS)

## 1. Purpose
This repository records the baseline requirements, identifies requirement defects, documents peer-review results, and provides configuration-management evidence for the polar seed vault scenario.

The vault is a **custodian**. Depositors retain ownership of their seed boxes except where an explicitly authorized emergency-release process applies.

## 2. Scope
This assignment covers:
- Requirements S1–S12 and baseline control.
- Defect taxonomy and requirement-by-requirement inspection.
- Cross-requirement consistency analysis.
- Peer-review comparison and detection-rate calculation.
- Summary statistics and a defect-distribution chart.

## 3. Repository structure
```text
requirements/   Baseline requirements
 defect-logs/   Taxonomy, detailed defect log, peer review
abstractions/   Domain concepts and assumptions
models/         Requirement/domain models
operations/     Git and configuration-management procedure
constraints/    Capacity, temperature, ownership and withdrawal constraints
proofs/         Verification obligations and proof notes
reports/        Summary tables and chart
.github/        Change-request / pull-request template
```

## 4. Key domain concepts
- **Depositor:** registered institution that deposits and owns boxes.
- **Box:** sealed container holding seed samples of one species.
- **Chamber:** freezer storage unit with a defined capacity.
- **Vault authority:** authorized body that may invoke emergency release.
- **Staff:** personnel who handle deposits, withdrawals, inspections and monitoring.

## 5. Baseline and change control
The initial approved requirement set is `PSVS-REQ-v1.0`, tagged `baseline-1`.
Defect analysis is performed on a separate `defect-analysis` branch. Proposed corrections must be reviewed and approved before changing the baseline. Do not silently overwrite baseline requirements.

## 6. Verification approach
Each defect has an ID, requirement reference, category, description, evidence, severity, suggested correction and status. Severity is assessed as:
- **Critical:** safety, ownership, or major integrity risk.
- **High:** major ambiguity, contradiction, or missing control.
- **Medium:** important detail missing or weakly verifiable.
- **Low:** minor clarity, traceability or documentation issue.

## 7. Important assumptions and limitations
1. The supplied scenario does not define whether a box can be split; this analysis treats a box as the unit of storage and withdrawal.
2. “Year” is not assumed to mean calendar year until the owner defines it.
3. “Promptly”, “safe”, “good audit trail” and “emergency” need measurable or controlled definitions.
4. Peer-review findings must be entered after an actual classmate review. No peer findings are fabricated.
5. The proposed fixes in the defect log are recommendations, not approved changes to the baseline.

## 8. How to use
1. Read `requirements/PSVS-REQ-v1.0.md`.
2. Review `defect-logs/defect-taxonomy.md` and `defect-logs/defect-log.md`.
3. Complete `defect-logs/peer-review.md` after exchanging logs with a classmate.
4. Review `reports/defect-summary.md` and `reports/defect-chart.png`.
5. Follow `operations/git-workflow.md` to create the required Git history and publish the repository.

## 9. Submission checklist
- [ ] GitHub repository created with the required name.
- [ ] Baseline commit tagged `baseline-1`.
- [ ] Three defect-analysis commits merged into `main`.
- [ ] `git log --oneline --graph --all` screenshot captured.
- [ ] Change-request template included.
- [ ] Peer review completed with real classmate data.
- [ ] Repository link added to the submission.
