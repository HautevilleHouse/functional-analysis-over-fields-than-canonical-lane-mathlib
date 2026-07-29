import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure SpectralTheoryPackage (K : Type) (F : FieldStructure K) (V : FunctionalAnalysisPackage K F) (O : OperatorTheoryPackage K F V) where
  spectrum : Endomorphism V → Set K
  resolventSet : Endomorphism V → Set K
  spectralMapping : Prop

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse