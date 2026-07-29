import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure ExistenceUniquenessPackage (A : AdmissibleClass) where
  bestApproximationExists : Prop
  bestApproximationUnique : Prop
  approxFromSubspace : A.object.subspace → A.object.space → A.object.space
  existenceProof : bestApproximationExists

structure ExistenceUniquenessEvidence (A : AdmissibleClass) (P : ExistenceUniquenessPackage A) where
  bestApproximationExistsClosed : P.bestApproximationExists
  bestApproximationUniqueClosed : P.bestApproximationUnique

def ExistenceUniquenessClosed (A : AdmissibleClass) (P : ExistenceUniquenessPackage A) : Prop :=
  P.bestApproximationExists ∧ P.bestApproximationUnique

theorem existence_uniqueness_closed_from_evidence
    (A : AdmissibleClass) (P : ExistenceUniquenessPackage A) (E : ExistenceUniquenessEvidence A P) :
    ExistenceUniquenessClosed A P := by
  exact And.intro E.bestApproximationExistsClosed E.bestApproximationUniqueClosed

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse