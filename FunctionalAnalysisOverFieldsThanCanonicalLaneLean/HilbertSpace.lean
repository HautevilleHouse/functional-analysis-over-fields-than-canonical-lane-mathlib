import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure InnerProduct (V : Type u) [AddCommGroup V] [Module ℝ V] where
  inner : V → V → ℝ
  symmetric : ∀ x y, inner x y = inner y x
  linearInFirst : ∀ a b x y, inner (a • x + b • y) z = a * inner x z + b * inner y z
  positiveDefinite : ∀ x, inner x x ≥ 0 ∧ (inner x x = 0 ↔ x = 0)

structure InnerProductEvidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    (I : InnerProduct V) where
  symmetricClosed : I.symmetric
  linearInFirstClosed : I.linearInFirst
  positiveDefiniteClosed : I.positiveDefinite

def InnerProductClosed {V : Type u} [AddCommGroup V] [Module ℝ V] (I : InnerProduct V) : Prop :=
  I.symmetric ∧ I.linearInFirst ∧ I.positiveDefinite

theorem inner_product_closed_from_evidence {V : Type u} [AddCommGroup V] [Module ℝ V]
    (I : InnerProduct V) (E : InnerProductEvidence I) : InnerProductClosed I := by
  exact And.intro E.symmetricClosed
    (And.intro E.linearInFirstClosed E.positiveDefiniteClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse