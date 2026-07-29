import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure AdmittedObject where
  space : Type u
  normed : NormedAddCommGroup space
  complete : CompleteSpace space
  fieldProperty : Prop
  conclusion : Prop
  conclusionTerm : conclusion

def AdmittedObjectWitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse