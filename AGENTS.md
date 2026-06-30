# Windows Target Agents

This repository owns the official AiLang Windows target package.

Windows owns `.exe`/installer packaging, Win32 host integration, local run,
doctor diagnostics, signing hooks, and Windows-specific CI/CD.

It does not own AiLang language semantics, AiVM evaluation semantics, AiVectra
UI semantics, or package semantics.

## Verification

```bash
./scripts/validate-target.sh
```
