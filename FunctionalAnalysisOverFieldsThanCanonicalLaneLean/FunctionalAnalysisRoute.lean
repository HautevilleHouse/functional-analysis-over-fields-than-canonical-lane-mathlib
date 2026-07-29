import canonicalLaneMathlib.SpectralTheorem

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure FunctionalAnalysisRouteObligations where
  banachTheory : Prop
  hilbertTheory : Prop
  operatorTheory : Prop
  spectralTheorem : Prop

structure FunctionalAnalysisRouteEvidence (R : FunctionalAnalysisRouteObligations) where
  banachTheoryClosed : R.banachTheory
  hilbertTheoryClosed : R.hilbertTheory
  operatorTheoryClosed : R.operatorTheory
  spectralTheoremClosed : R.spectralTheorem

def FunctionalAnalysisRouteClosed (R : FunctionalAnalysisRouteObligations) : Prop :=
  R.banachTheory ∧ R.hilbertTheory ∧ R.operatorTheory ∧ R.spectralTheorem

theorem functional_analysis_route_closed_from_evidence
    (R : FunctionalAnalysisRouteObligations) (E : FunctionalAnalysisRouteEvidence R) :
    FunctionalAnalysisRouteClosed R := by
  exact And.intro E.banachTheoryClosed
    (And.intro E.hilbertTheoryClosed
      (And.intro E.operatorTheoryClosed E.spectralTheoremClosed))

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse