# AiLang Windows Target

Official AiLang target package for Windows.

Current package release: `0.0.1-alpha.2`.

## Package

```text
packages/target-windows
```

## Status

Package discovery is enabled. The current alpha target package declares the
Windows target contract and delegates to the SDK's built-in Windows publish
path while Windows-specific host tooling is moved into this repository.

Supported target identifiers:

```text
windows
win32
win64
```

Declared artifact types:

```text
exe
dir
msi
msix
```

Declared options:

```text
arch
app-id
signing-certificate
```

## Usage

```bash
ailang package restore
ailang publish . --target windows --target-option app-id=com.example.MyApp
```

Local `run` requires a Windows host. MSI/MSIX packaging, signing, and Windows
host-library work remain target-owned responsibilities for this repository.
