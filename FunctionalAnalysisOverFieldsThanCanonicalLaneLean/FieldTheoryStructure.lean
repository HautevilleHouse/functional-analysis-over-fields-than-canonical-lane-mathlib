import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure FieldStructure (K : Type) where
  addition : K → K → K
  multiplication : K → K → K
  zero : K
  one : K
  additiveGroup : Group K addition zero
  multiplicativeGroup : Group K multiplication one
  distrib : ∀ a b c : K, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse