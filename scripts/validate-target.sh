#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
test -f "${ROOT_DIR}/packages/target-windows/package.toml"
for tool in run publish doctor flash; do
  test -x "${ROOT_DIR}/packages/target-windows/tools/${tool}"
  sh -n "${ROOT_DIR}/packages/target-windows/tools/${tool}"
done
grep -q 'types = .*"target"' "${ROOT_DIR}/packages/target-windows/package.toml"
echo "target-windows validation: PASS"
