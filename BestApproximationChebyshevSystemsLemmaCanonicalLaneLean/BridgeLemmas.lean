import HautevilleHouse.BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse