import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure FunctionSpace (X : Type u) [TopologicalSpace X] (K : Type v) [Field K] where
  carrier : Set (X → K)
  closedUnderAddition : ∀ f g, f ∈ carrier → g ∈ carrier → (λ x => f x + g x) ∈ carrier
  closedUnderScalar : ∀ (c : K) f, f ∈ carrier → (λ x => c * f x) ∈ carrier
  containsZero : (λ _ : X => (0 : K)) ∈ carrier

structure FunctionSpaceEvidence {X : Type u} [TopologicalSpace X] {K : Type v} [Field K]
    (F : FunctionSpace X K) where
  closedUnderAdditionClosed : F.closedUnderAddition
  closedUnderScalarClosed : F.closedUnderScalar
  containsZeroClosed : F.containsZero

def FunctionSpaceClosed {X : Type u} [TopologicalSpace X] {K : Type v} [Field K]
    (F : FunctionSpace X K) : Prop :=
  F.closedUnderAddition ∧ F.closedUnderScalar ∧ F.containsZero

theorem function_space_closed_from_evidence {X : Type u} [TopologicalSpace X] {K : Type v} [Field K]
    (F : FunctionSpace X K) (E : FunctionSpaceEvidence F) : FunctionSpaceClosed F := by
  exact And.intro E.closedUnderAdditionClosed
    (And.intro E.closedUnderScalarClosed E.containsZeroClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse