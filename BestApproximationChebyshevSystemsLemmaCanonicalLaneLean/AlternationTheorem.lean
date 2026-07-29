import BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.ChebyshevSystem

/-!
# Alternation Theorem Package
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure AlternationTheoremPackage (C : ChebyshevSystem) (f : C.functions → ℝ) where
  alternationPoints : Set ℝ
  alternatingSign : ℤ → ℤ → Prop
  alternationCondition : Prop
  bestApproximationCharacterization : Prop

def AlternationTheoremClosed (C : ChebyshevSystem) (f : C.functions → ℝ) (P : AlternationTheoremPackage C f) : Prop :=
  P.bestApproximationCharacterization

structure AlternationTheoremEvidence (C : ChebyshevSystem) (f : C.functions → ℝ) (P : AlternationTheoremPackage C f) where
  bestApproximationCharacterizationClosed : P.bestApproximationCharacterization

theorem alternation_theorem_closed_from_evidence (C : ChebyshevSystem) (f : C.functions → ℝ) (P : AlternationTheoremPackage C f) (E : AlternationTheoremEvidence C f P) :
    AlternationTheoremClosed C f P := E.bestApproximationCharacterizationClosed

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse