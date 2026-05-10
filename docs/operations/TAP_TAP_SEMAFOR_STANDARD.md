# TAP-TAP + SEMAFOR Standard

## Canon Line

Downloads is storage.  
Repo folder is the workshop.

## Rule

APPLY packages may live in `~/Downloads`, but all repo work must run from:

```bash
cd ~/Documents/Projects/<repo-name>
```

## Required Semafor Checks

Every serious APPLY script must show:

- 🟢 repo path OK
- 🟢 remote OK
- 🟢 clean worktree OK
- 🟢 expected base/tag OK
- 🟢 build/verify OK
- 🟢 commit OK
- 🟢 tag OK
- 🟢 push OK
- 🟢 local = GitHub

## STOP Codes

- 🔴 STOP_REPO_PATH_NOT_FOUND
- 🔴 STOP_NOT_ON_EXPECTED_TAG
- 🔴 STOP_WORKTREE_NOT_CLEAN
- 🔴 STOP_REMOTE_MISMATCH
- 🔴 STOP_GH_NOT_AUTHENTICATED
- 🔴 BUILD_FAILED
- 🔴 PUSH_MAIN_FAILED
- 🔴 PUSH_TAG_FAILED
- 🔴 STOP_LOCAL_REMOTE_HEAD_MISMATCH

## Principle

No blind cuts.  
No panic.  
System pulse must be visible.
