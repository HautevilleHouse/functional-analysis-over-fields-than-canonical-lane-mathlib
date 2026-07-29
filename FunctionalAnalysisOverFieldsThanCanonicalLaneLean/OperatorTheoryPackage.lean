import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure OperatorTheoryPackage (K : Type) (F : FieldStructure K) (V : FunctionalAnalysisPackage K F) where
  boundedOperators : Set (Endomorphism V)
  compactOperators : Set (Endomorphism V)
  spectralProperties : Prop

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse