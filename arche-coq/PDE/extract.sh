#!/usr/bin/env bash
set -e

echo "🛠 Extracting Coq definitions..."

# Use directory-safe traversal even for usernames with spaces
ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

cd "$ROOT_DIR"

coqc -Q arche-coq Arche arche-coq/PDE/Extract.v

echo "✅ Extraction complete."

