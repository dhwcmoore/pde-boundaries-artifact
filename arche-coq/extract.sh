#!/bin/bash
set -e

# Move to the Coq project root if needed
cd "$(dirname "$0")/../.."

# Example extraction command (customize as needed for your project)
coqc -extract -outputdir ./extracted ./arche-coq/PDE/*.v

echo "Extraction complete."