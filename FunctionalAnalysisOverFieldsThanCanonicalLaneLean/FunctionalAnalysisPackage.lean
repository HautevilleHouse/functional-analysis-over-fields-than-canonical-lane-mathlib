import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure FunctionalAnalysisPackage (K : Type) (F : FieldStructure K) where
  vectorSpace : VectorSpace K F
  normed : Boolean
  complete : Boolean

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse