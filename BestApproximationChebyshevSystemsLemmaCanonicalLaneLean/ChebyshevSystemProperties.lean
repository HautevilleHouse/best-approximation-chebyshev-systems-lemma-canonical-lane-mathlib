import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure ChebyshevSystemProperties (A : AdmissibleClass) where
  totalDimension : ℕ
  interpolationProperty : Prop
  zeroCountBound : Prop
  haarConditionEquivalent : Prop

structure ChebyshevSystemEvidence (A : AdmissibleClass) (P : ChebyshevSystemProperties A) where
  interpolationPropertyClosed : P.interpolationProperty
  zeroCountBoundClosed : P.zeroCountBound
  haarConditionEquivalentClosed : P.haarConditionEquivalent

def ChebyshevSystemClosed (A : AdmissibleClass) (P : ChebyshevSystemProperties A) : Prop :=
  P.interpolationProperty ∧ P.zeroCountBound ∧ P.haarConditionEquivalent

theorem chebyshev_system_closed_from_evidence
    (A : AdmissibleClass) (P : ChebyshevSystemProperties A) (E : ChebyshevSystemEvidence A P) :
    ChebyshevSystemClosed A P := by
  exact And.intro E.interpolationPropertyClosed
    (And.intro E.zeroCountBoundClosed E.haarConditionEquivalentClosed)

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse