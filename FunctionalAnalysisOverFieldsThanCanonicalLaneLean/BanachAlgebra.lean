import HautevilleHouse.FunctionalAnalysisOverFieldsThanCanonicalLaneLean.OperatorTheory

namespace HautevilleHouse
namespace FunctionalAnalysisOverFieldsThanCanonicalLaneLean

structure BanachAlgebraPackage (A : AdmissibleClass) where
  algebraNorm : Prop
  submultiplicativity : Prop
  unitBallBanach : Prop

structure BanachAlgebraEvidence (A : AdmissibleClass) (B : BanachAlgebraPackage A) where
  algebraNormClosed : B.algebraNorm
  submultiplicativityClosed : B.submultiplicativity
  unitBallBanachClosed : B.unitBallBanach

def BanachAlgebraClosed (A : AdmissibleClass) (B : BanachAlgebraPackage A) : Prop :=
  B.algebraNorm ∧ B.submultiplicativity ∧ B.unitBallBanach

theorem banach_algebra_closed_from_evidence (A : AdmissibleClass) (B : BanachAlgebraPackage A)
    (E : BanachAlgebraEvidence A B) : BanachAlgebraClosed A B := by
  exact And.intro E.algebraNormClosed (And.intro E.submultiplicativityClosed E.unitBallBanachClosed)

end FunctionalAnalysisOverFieldsThanCanonicalLaneLean
end HautevilleHouse
