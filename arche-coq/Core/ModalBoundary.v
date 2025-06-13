// === File: arche-coq/Core/ModalBoundary.v ===
Inductive ModalBoundary : Type :=
  | Safe : forall O1 O2, M O1 -> M O2 -> ModalBoundary.
