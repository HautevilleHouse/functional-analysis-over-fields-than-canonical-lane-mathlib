import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure FunctionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FunctionalAdmittedObject where
  space : FunctionalSpace
  isField : Prop
  normedSpace : Prop
  complete : Prop
  conclusion : isField ∧ normedSpace ∧ complete

def FunctionalWitnessClosed (O : FunctionalAdmittedObject) : Prop :=
  O.isField ∧ O.normedSpace ∧ O.complete

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse