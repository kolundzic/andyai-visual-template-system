# ROLLBACK — v0.2.0

If v0.2.0 needs to be rolled back before push:

```bash
cd ~/Documents/Projects/andyai-visual-template-system
git restore .
git clean -fd
```

If already committed but not pushed:

```bash
git reset --hard HEAD~1
```

If tag exists locally:

```bash
git tag -d v0.2.0
```

If tag was pushed accidentally:

```bash
git push origin :refs/tags/v0.2.0
```
