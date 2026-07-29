import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure SpectralTheoremPackage (A : AdmissibleClass) (B : BanachAlgebraPackage A) where
  spectrumNonempty : Prop
  spectralMapping : Prop
  spectralRadiusFormula : Prop

structure SpectralTheoremEvidence (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) where
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralMappingClosed : S.spectralMapping
  spectralRadiusFormulaClosed : S.spectralRadiusFormula

def SpectralTheoremClosed (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) : Prop :=
  S.spectrumNonempty ∧ S.spectralMapping ∧ S.spectralRadiusFormula

theorem spectral_theorem_closed_from_evidence (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (S : SpectralTheoremPackage A B) (E : SpectralTheoremEvidence A B S) :
    SpectralTheoremClosed A B S := by
  exact And.intro E.spectrumNonemptyClosed (And.intro E.spectralMappingClosed E.spectralRadiusFormulaClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
