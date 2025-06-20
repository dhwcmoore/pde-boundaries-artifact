(* arche-coq/PDE/Extract.v *)

Require Import PDE.Operator.
Require Import PDE.Validator.

Module Export Extracted.
  Definition validate_coercivity := PDE.Validator.validate_coercivity.
  Definition validate_continuity := PDE.Validator.validate_continuity.
  Definition generate_operator_params := PDE.Operator.generate_operator_params.
End Extracted.

Extraction Language OCaml.
Extraction "arche-coq/PDE/Extraction/extracted"
  Extracted.validate_coercivity
  Extracted.validate_continuity
  Extracted.generate_operator_params.
