
// === File: arche-coq/Core/ARCHE_core_data.v ===
Record Occasion := {
  id : nat;
  timestamp : nat;
  prehensions : list Prehension;
  boundary_context : option BoundaryContext;
  symbol : string;
  metadata : list (string * string)
}.
Inductive Boundary := Rigid | Soft | Fractal.