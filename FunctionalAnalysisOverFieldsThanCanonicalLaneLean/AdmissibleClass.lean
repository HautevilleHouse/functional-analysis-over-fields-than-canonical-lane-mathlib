import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure Field_Than (K : Type) where
  carrier : Set K
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  add_assoc : ∀ a b c, add a (add b c) = add (add a b) c
  mul_assoc : ∀ a b c, mul a (mul b c) = mul (mul a b) c
  add_comm : ∀ a b, add a b = add b a
  mul_comm : ∀ a b, mul a b = mul b a
  add_zero : ∀ a, add a zero = a
  zero_add : ∀ a, add zero a = a
  mul_one : ∀ a, mul a one = a
  one_mul : ∀ a, mul one a = a
  left_distrib : ∀ a b c, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c, mul (add a b) c = add (mul a c) (mul b c)
  exists_neg : ∀ a, ∃ b, add a b = zero
  exists_inv : ∀ a, a ≠ zero → ∃ b, mul a b = one

structure FunctionalAdmittedObject (K : Type) [Field K] where
  vectorSpace : Type
  vectorSpaceTopology : TopologicalSpace vectorSpace
  norm : vectorSpace → ℝ
  normNonneg : ∀ x, norm x ≥ 0
  normZero : ∀ x, norm x = 0 ↔ x = 0
  normScalar : ∀ (a : K) (x : vectorSpace), norm (a • x) = |a| * norm x
  normTriangle : ∀ x y, norm (x + y) ≤ norm x + norm y
  complete : Prop
  completeness : complete

structure AdmissibleClass where
  object : FunctionalAdmittedObject ℂ
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FunctionalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
