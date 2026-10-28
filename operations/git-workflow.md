# Git Configuration-Management Workflow

Run these commands in PowerShell from the parent directory where the repository should be created. Replace `<RollNo>` with your actual roll number.

## 1. Create repository and baseline
```powershell
mkdir VV-Lab-<RollNo>-PSVS
cd VV-Lab-<RollNo>-PSVS
git init -b main
# Copy the assignment folders/files into this directory.
git add .
git commit -m "PSVS-REQ-v1.0: establish requirements baseline"
git tag -a baseline-1 -m "Baseline requirements PSVS-REQ-v1.0"
```

## 2. Create defect-analysis branch and make three commits
```powershell
git switch -c defect-analysis

git add defect-logs/defect-taxonomy.md
git commit -m "Add requirement defect taxonomy"

git add defect-logs/defect-log.md
git commit -m "Record requirement and cross-requirement defects"

git add defect-logs/peer-review.md reports/
git commit -m "Add peer-review framework and defect summary"

git switch main
git merge --no-ff defect-analysis -m "Merge defect analysis into main"
```

If peer review has not happened yet, commit the peer-review framework as a template and complete it later in a separate commit. Do not invent peer results.

## 3. Verify history and capture screenshot
```powershell
git log --oneline --graph --decorate --all
git tag --list
git status
```
Take a screenshot showing the baseline commit/tag, three branch commits and merge commit.

## 4. Publish to GitHub
1. Create a new empty GitHub repository named `VV-Lab-<RollNo>-PSVS`.
2. Do not initialize it with a README if you already have one locally.
3. Run:
```powershell
git remote add origin https://github.com/<YourGitHubUsername>/VV-Lab-<RollNo>-PSVS.git
git push -u origin main
git push origin --tags
git push -u origin defect-analysis
```
4. Copy the actual GitHub repository URL into your submission.

**Important:** a local Git repository and screenshot are not the same as a published GitHub repository. The remote URL and push must be completed using your own GitHub account.
