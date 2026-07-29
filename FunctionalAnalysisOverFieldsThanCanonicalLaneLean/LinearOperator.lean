import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure LinearOperator (X Y : Type u) [AddCommGroup X] [Module ℝ X] [AddCommGroup Y] [Module ℝ Y] where
  map : X → Y
  additive : ∀ x y, map (x + y) = map x + map y
  homogeneous : ∀ (c : ℝ) x, map (c • x) = c • map x

structure LinearOperatorEvidence {X Y : Type u} [AddCommGroup X] [Module ℝ X] [AddCommGroup Y] [Module ℝ Y]
    (T : LinearOperator X Y) where
  additiveClosed : T.additive
  homogeneousClosed : T.homogeneous

def LinearOperatorClosed {X Y : Type u} [AddCommGroup X] [Module ℝ X] [AddCommGroup Y] [Module ℝ Y]
    (T : LinearOperator X Y) : Prop :=
  T.additive ∧ T.homogeneous

theorem linear_operator_closed_from_evidence {X Y : Type u} [AddCommGroup X] [Module ℝ X] [AddCommGroup Y] [Module ℝ Y]
    (T : LinearOperator X Y) (E : LinearOperatorEvidence T) : LinearOperatorClosed T := by
  exact And.intro E.additiveClosed E.homogeneousClosed

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse