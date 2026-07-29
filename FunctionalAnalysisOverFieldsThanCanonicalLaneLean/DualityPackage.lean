import .MathlibObjects

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure DualityPackage where
  primal : FunctionalSpace
  dual : FunctionalSpace
  pairing : primal.carrier → dual.carrier → ℝ
  isBilinear : Prop
  separatesPoints : Prop

def DualityClosed (D : DualityPackage) : Prop :=
  D.isBilinear ∧ D.separatesPoints

theorem duality_closed (D : DualityPackage) : DualityClosed D := by
  exact And.intro D.isBilinear D.separatesPoints

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse