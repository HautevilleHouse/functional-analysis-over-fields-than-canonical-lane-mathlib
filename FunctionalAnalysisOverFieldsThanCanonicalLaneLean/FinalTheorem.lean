import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

def ConstrainedFunctionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
