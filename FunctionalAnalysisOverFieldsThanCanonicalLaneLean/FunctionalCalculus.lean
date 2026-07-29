import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.SpectralTheorem

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) where
  homomorphismExists : Prop
  spectralMapping : Prop
  uniqueness : Prop

structure ContinuousFunctionalCalculusEvidence (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) (C : ContinuousFunctionalCalculusPackage A B S) where
  homomorphismExistsClosed : C.homomorphismExists
  spectralMappingClosed : C.spectralMapping
  uniquenessClosed : C.uniqueness

def ContinuousFunctionalCalculusClosed (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) (C : ContinuousFunctionalCalculusPackage A B S) : Prop :=
  C.homomorphismExists ∧ C.spectralMapping ∧ C.uniqueness

theorem continuous_functional_calculus_closed_from_evidence (A : AdmissibleClass)
    (B : BanachAlgebraPackage A) (S : SpectralTheoremPackage A B)
    (C : ContinuousFunctionalCalculusPackage A B S)
    (E : ContinuousFunctionalCalculusEvidence A B S C) :
    ContinuousFunctionalCalculusClosed A B S C := by
  exact And.intro E.homomorphismExistsClosed (And.intro E.spectralMappingClosed E.uniquenessClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
