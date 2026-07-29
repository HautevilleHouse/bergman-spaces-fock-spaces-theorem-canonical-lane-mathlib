import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure SegalBargmannTransformPackage (Ω : Type) [TopologicalSpace Ω] (n : ℕ) where
  transform : (Ω → ℂ) → (ℂ^n → ℂ)
  isIsometry : Prop
  surjectivity : Prop
  isometryTerm : isIsometry
  surjectivityTerm : surjectivity

structure SegalBargmannTransformEvidence {Ω : Type} [TopologicalSpace Ω] {n : ℕ}
    (S : SegalBargmannTransformPackage Ω n) where
  isometryClosed : S.isIsometry
  surjectivityClosed : S.surjectivity

def SegalBargmannTransformClosed {Ω : Type} [TopologicalSpace Ω] {n : ℕ}
    (S : SegalBargmannTransformPackage Ω n) : Prop :=
  S.isIsometry ∧ S.surjectivity

theorem segal_bargmann_transform_closed_from_evidence {Ω : Type} [TopologicalSpace Ω] {n : ℕ}
    (S : SegalBargmannTransformPackage Ω n) (E : SegalBargmannTransformEvidence S) :
    SegalBargmannTransformClosed S :=
  And.intro E.isometryClosed E.surjectivityClosed

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
