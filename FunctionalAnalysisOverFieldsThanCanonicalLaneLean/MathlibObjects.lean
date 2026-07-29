import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FunctionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  norm : carrier → ℝ

structure FunctionalAdmittedObject where
  space : FunctionalSpace
  completeness : Prop
  boundedness : Prop
  dual : Type
  dualTopology : TopologicalSpace dual
  isReflexive : Prop
  conclusion : isReflexive

def FunctionalWitnessClosed (O : FunctionalAdmittedObject) : Prop :=
  O.isReflexive

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse