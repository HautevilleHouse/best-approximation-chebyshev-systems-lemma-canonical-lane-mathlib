import canonicalLaneMathlib.HaarSpace

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure HaarSpace (X : Type u) where
  basis : ℕ → (X → ℝ)
  dimension : ℕ
  haarsCondition : Prop
  interpolationProperty : Prop
  haarsConditionTerm : haarsCondition
  interpolationPropertyTerm : interpolationProperty

structure HaarSpaceEvidence (H : HaarSpace X) where
  haarsConditionClosed : H.haarsCondition
  interpolationPropertyClosed : H.interpolationProperty

def HaarSpaceClosed (H : HaarSpace X) : Prop :=
  H.haarsCondition ∧ H.interpolationProperty

theorem haar_space_closed_from_evidence (H : HaarSpace X) (E : HaarSpaceEvidence H) :
    HaarSpaceClosed H := by
  exact And.intro E.haarsConditionClosed E.interpolationPropertyClosed

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse