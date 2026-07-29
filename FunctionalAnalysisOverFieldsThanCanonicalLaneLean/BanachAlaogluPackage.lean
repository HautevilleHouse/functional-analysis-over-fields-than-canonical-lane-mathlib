import .WeakTopologyPackage

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure BanachAlaogluPackage (D : DualityPackage) (W : WeakTopologyPackage D) where
  closedUnitBallInWeak : Set D.dual.carrier
  compact : Prop

def BanachAlaogluClosed (D : DualityPackage) (W : WeakTopologyPackage D) (B : BanachAlaogluPackage D W) : Prop :=
  B.compact

theorem banach_alaoglu_closed (D : DualityPackage) (W : WeakTopologyPackage D) (B : BanachAlaogluPackage D W) :
    BanachAlaogluClosed D W B := by
  exact B.compact

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse