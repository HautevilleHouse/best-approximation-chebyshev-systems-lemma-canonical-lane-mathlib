import BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.AlternationTheorem

/-!
# Best Approximation Package
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure BestApproximationPackage (C : ChebyshevSystem) (f : C.functions → ℝ) where
  approximationSubspace : Submodule ℝ (C.functions → ℝ)
  norm : ℝ → ℝ → ℝ  -- e.g., supremum norm
  existence : Prop
  uniqueness : Prop

def BestApproximationClosed (C : ChebyshevSystem) (f : C.functions → ℝ) (P : BestApproximationPackage C f) : Prop :=
  P.existence ∧ P.uniqueness

structure BestApproximationEvidence (C : ChebyshevSystem) (f : C.functions → ℝ) (P : BestApproximationPackage C f) where
  existenceClosed : P.existence
  uniquenessClosed : P.uniqueness

theorem best_approximation_closed_from_evidence (C : ChebyshevSystem) (f : C.functions → ℝ) (P : BestApproximationPackage C f) (E : BestApproximationEvidence C f P) :
    BestApproximationClosed C f P := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse