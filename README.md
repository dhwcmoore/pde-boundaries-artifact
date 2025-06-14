![Build Status](https://github.com/dhwcmoore/pde-boundaries-artifact/actions/workflows/ci.yml/badge.svg)

# PDE‑Boundaries Artifact

A Coq formalization and OCaml‑extracted artifact proving well‑posedness of a PDE boundary‑value problem using the Lax–Milgram theorem.

---

## 📂 Project Structure

Build Status: https://github.com/dhwcmoore/pde-boundaries-artifact/actions/workflows/ci.yml/badge.svg

# PDE‑Boundaries Artifact

A Coq formalization and OCaml‑extracted artifact proving well‑posedness of a PDE boundary‑value problem using the Lax–Milgram theorem.

---

## Project Structure

LICENSE  
Makefile  
README.md  
_CoqProject  
arche-coq/  
extract.sh  

- arche-coq/: contains Coq proof files (`Core/` core theory, `PDE/`, etc.)  
- extract.sh: local script to trigger OCaml extraction  
- CI workflow builds proofs and uploads OCaml artifacts

---

## Prerequisites

- Coq v8.18.0  
- OCaml v4.14.1  
- OPAM packages: coq-mathcomp-analysis, dune  
  (Installed automatically via CI)

---

## Local Build Instructions

# Clone the repo (if not yet done)
git clone https://github.com/dhwcmoore/pde-boundaries-artifact.git
cd pde-boundaries-artifact

# Install dependencies and build proofs
opam install .
opam exec -- make

# Extract OCaml artifacts
opam exec -- make extract
./extract.sh

This will generate .ml, .cmx, and executable files via OCaml.

---

## CI & Artifact Downloads

Our GitHub Actions pipeline builds everything, runs extraction, and publishes artifacts. You can download them under:
Actions → latest run → Artifacts → pde-boundaries-artifact

---

## Usage Example

# After downloading and extracting the artifact:
cd extract/
ocamlfind ocamlc -package <dependency-list> *.ml -o run_pde
./run_pde

This compiles and runs the extracted code.

---

## Development Notes

- Update upload-artifact paths in CI workflow if needed.  
- Add unit tests for OCaml outputs in CI.  
- Contributions welcome!

---

## Contact & License

- Authored by D. Moore (GitHub: dhwcmoore)  
- Licensed under the MIT License (see LICENSE file)

