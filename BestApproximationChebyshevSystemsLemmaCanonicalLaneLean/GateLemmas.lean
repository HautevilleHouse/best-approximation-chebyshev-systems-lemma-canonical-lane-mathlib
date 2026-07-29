import HautevilleHouse.BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse