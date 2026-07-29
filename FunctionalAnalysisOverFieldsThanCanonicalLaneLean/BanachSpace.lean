import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure BanachSpacePackage where
  space : Type u
  normedSpace : NormedAddCommGroup space
  normComplete : CompleteSpace space
  fieldScalar : Type v
  normedField : NormedField fieldScalar
  module : Module fieldScalar space
  normedModule : NormedModule fieldScalar space
  properties : Prop
  propertiesTerm : properties

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  spaceClosed : B.properties
  normCompleteClosed : B.normComplete

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.properties ∧ B.normComplete

theorem banach_space_closed_from_evidence (B : BanachSpacePackage) (E : BanachSpaceEvidence B) :
    BanachSpaceClosed B := by
  exact And.intro E.spaceClosed E.normCompleteClosed

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse