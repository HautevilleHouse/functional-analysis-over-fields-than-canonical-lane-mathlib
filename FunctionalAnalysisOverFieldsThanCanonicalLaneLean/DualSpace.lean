import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure DualSpace (V : Type u) [AddCommGroup V] [Module ℝ V] where
  functionals : Set (V → ℝ)
  linearity : ∀ f ∈ functionals, LinearOperator V ℝ
  pointSeparation : ∀ v w : V, v ≠ w → ∃ f ∈ functionals, f v ≠ f w

structure DualSpaceEvidence (V : Type u) [AddCommGroup V] [Module ℝ V]
    (D : DualSpace V) where
  linearityClosed : D.linearity
  pointSeparationClosed : D.pointSeparation

def DualSpaceClosed (V : Type u) [AddCommGroup V] [Module ℝ V] (D : DualSpace V) : Prop :=
  ∃ (h : ∀ f ∈ D.functionals, LinearOperatorClosed ⟨f, ?_, ?_⟩), D.pointSeparation

-- placeholder; actual proof would require constructing LinearOperator records

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse