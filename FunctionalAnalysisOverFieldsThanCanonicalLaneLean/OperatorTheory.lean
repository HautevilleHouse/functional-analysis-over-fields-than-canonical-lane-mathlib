import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.NormedSpace.OperatorNorm

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure OperatorTheoryPackage (A : AdmissibleClass) where
  boundedOperators : Prop
  spectrumCompact : Prop
  functionalCalculus : Prop

structure OperatorTheoryEvidence (A : AdmissibleClass) (P : OperatorTheoryPackage A) where
  boundedOperatorsClosed : P.boundedOperators
  spectrumCompactClosed : P.spectrumCompact
  functionalCalculusClosed : P.functionalCalculus

def OperatorTheoryClosed (A : AdmissibleClass) (P : OperatorTheoryPackage A) : Prop :=
  P.boundedOperators ∧ P.spectrumCompact ∧ P.functionalCalculus

theorem operator_theory_closed_from_evidence (A : AdmissibleClass) (P : OperatorTheoryPackage A)
    (E : OperatorTheoryEvidence A P) : OperatorTheoryClosed A P := by
  exact And.intro E.boundedOperatorsClosed (And.intro E.spectrumCompactClosed E.functionalCalculusClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
