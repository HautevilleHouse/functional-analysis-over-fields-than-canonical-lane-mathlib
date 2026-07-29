import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "HautevilleHouse/FunctionalAnalysisOverFieldsThanCanonicalLaneLean"

def sourceDescription : String :=
  "Functional analysis over fields than: admissible-class bridge for normed spaces"

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse