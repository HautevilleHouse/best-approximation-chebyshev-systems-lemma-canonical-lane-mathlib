import BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.AlternationTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure UniquenessTheoremPackage {C : ChebyshevSystemPackage} {H : C.haarCondition}
    (A : AlternationTheoremPackage H) where
  uniquenessOfBestApproximation : Prop
  strictConvexity : Prop
  kolmogorovCriterion : Prop

structure UniquenessTheoremEvidence {C : ChebyshevSystemPackage} {H : C.haarCondition}
    {A : AlternationTheoremPackage H} (U : UniquenessTheoremPackage A) where
  uniquenessClosed : U.uniquenessOfBestApproximation
  strictConvexityClosed : U.strictConvexity
  kolmogorovCriterionClosed : U.kolmogorovCriterion

def UniquenessTheoremClosed {C : ChebyshevSystemPackage} {H : C.haarCondition}
    {A : AlternationTheoremPackage H} (U : UniquenessTheoremPackage A) : Prop :=
  U.uniquenessOfBestApproximation ∧ U.strictConvexity ∧ U.kolmogorovCriterion

theorem uniqueness_theorem_closed_from_evidence {C : ChebyshevSystemPackage}
    {H : C.haarCondition} {A : AlternationTheoremPackage H}
    (U : UniquenessTheoremPackage A) (E : UniquenessTheoremEvidence U) :
    UniquenessTheoremClosed U := by
  exact And.intro E.uniquenessClosed
    (And.intro E.strictConvexityClosed E.kolmogorovCriterionClosed)

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse