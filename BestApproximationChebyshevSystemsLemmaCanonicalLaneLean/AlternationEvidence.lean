import BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure AlternationCertificate (P : ChebyshevSystemPackage) where
  alternationPoints : List P.interval
  signPattern : List ℝ
  errorBound : Prop
  optimalityCondition : Prop
  alternationPointsClosed : alternationPoints ≠ []
  errorBoundClosed : errorBound
  optimalityConditionClosed : optimalityCondition
  evidence : ChebyshevSystemEvidence P

def AlternationCertificateClosed (P : ChebyshevSystemPackage)
    (C : AlternationCertificate P) : Prop :=
  C.errorBound ∧ C.optimalityCondition ∧ ChebyshevSystemClosed P

theorem alternation_certificate_closed (P : ChebyshevSystemPackage)
    (C : AlternationCertificate P) : AlternationCertificateClosed P C := by
  exact And.intro C.errorBoundClosed
    (And.intro C.optimalityConditionClosed
      (chebyshev_system_closed_from_evidence P C.evidence))

structure AlternationEvidenceTerms (P : ChebyshevSystemPackage)
    (C : AlternationCertificate P) where
  alternationPointsClosed : C.alternationPointsClosed
  errorBoundClosed : C.errorBoundClosed
  optimalityConditionClosed : C.optimalityConditionClosed
  systemClosed : ChebyshevSystemClosed P

def AlternationCertificate.evidenceTerms (P : ChebyshevSystemPackage)
    (C : AlternationCertificate P) : AlternationEvidenceTerms P C := {
  alternationPointsClosed := C.alternationPointsClosed
  errorBoundClosed := C.errorBoundClosed
  optimalityConditionClosed := C.optimalityConditionClosed
  systemClosed := chebyshev_system_closed_from_evidence P C.evidence
}

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse
