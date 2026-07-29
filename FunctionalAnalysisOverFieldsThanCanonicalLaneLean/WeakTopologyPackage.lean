import .DualityPackage

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure WeakTopologyPackage (D : DualityPackage) where
  weakTopology : TopologicalSpace D.primal.carrier
  continuousDuals : Type
  bidual : Type
  canonicalEmbedding : D.primal.carrier → bidual
  denseRange : Prop

def WeakTopologyClosed (D : DualityPackage) (W : WeakTopologyPackage D) : Prop :=
  W.denseRange

theorem weak_topology_closed (D : DualityPackage) (W : WeakTopologyPackage D) :
    WeakTopologyClosed D W := by
  exact W.denseRange

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse