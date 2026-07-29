import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure ChebyshevAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  weightedFunction : space → ℝ
  gradientSystem : Type v
  conclusion : Prop

def ChebyshevWitnessClosed (O : ChebyshevAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : ChebyshevAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse
