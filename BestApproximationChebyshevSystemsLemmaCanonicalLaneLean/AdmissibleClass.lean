import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure ChebyshevSystemObject where
  carrier : Type u
  interval : Set ℝ
  functions : List (ℝ → ℝ)
  isChebyshevSystem : Prop
  dimension : ℕ
  conclusion : isChebyshevSystem

structure AdmissibleClass where
  object : ChebyshevSystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse