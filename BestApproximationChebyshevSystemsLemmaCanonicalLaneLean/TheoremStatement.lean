import HautevilleHouse.BestApproximationChebyshevSystemsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceRepository : String :=
  "best-approximation-chebyshev-systems-lemma-canonical-lane"

def sourceDescription : String :=
  "Best Approximation Chebyshev Systems Lemma"

def sourceTheoremBoundary : String :=
  "classical source boundary"

def baselineCertificateLane : String :=
  "manifold_constrained"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository
    theoremName := sourceRepository
    theoremObject := sourceDescription
    classicalBoundary := sourceTheoremBoundary
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates"
    certificateLane := baselineCertificateLane
    carriedRemainder := "classical source boundary carried by formalization"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end BestApproximationChebyshevSystemsLemmaCanonicalLaneLean
end HautevilleHouse