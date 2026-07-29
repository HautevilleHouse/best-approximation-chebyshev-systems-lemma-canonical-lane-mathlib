import HautevilleHouse.BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.GateLemmas
import HautevilleHouse.BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

def ConstrainedChebyshevClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chebyshev_endgame (A : AdmissibleClass) :
  ConstrainedChebyshevClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse