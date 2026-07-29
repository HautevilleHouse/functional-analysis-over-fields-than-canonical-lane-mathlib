import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FunctionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.completeness

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
