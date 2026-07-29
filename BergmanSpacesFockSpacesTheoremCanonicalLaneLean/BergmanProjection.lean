import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanProjectionPackage (Ω : Type) [TopologicalSpace Ω] where
  projectionOperator : (Ω → ℂ) → (Ω → ℂ)
  orthogonalProjection : Prop
  boundedness : Prop
  reproducerProperty : Prop
  orthogonalProjectionTerm : orthogonalProjection
  boundednessTerm : boundedness
  reproducerPropertyTerm : reproducerProperty

structure BergmanProjectionEvidence {Ω : Type} [TopologicalSpace Ω]
    (P : BergmanProjectionPackage Ω) where
  orthogonalProjectionClosed : P.orthogonalProjection
  boundednessClosed : P.boundedness
  reproducerPropertyClosed : P.reproducerProperty

def BergmanProjectionClosed {Ω : Type} [TopologicalSpace Ω]
    (P : BergmanProjectionPackage Ω) : Prop :=
  P.orthogonalProjection ∧ P.boundedness ∧ P.reproducerProperty

theorem bergman_projection_closed_from_evidence {Ω : Type} [TopologicalSpace Ω]
    (P : BergmanProjectionPackage Ω) (E : BergmanProjectionEvidence P) :
    BergmanProjectionClosed P :=
  And.intro E.orthogonalProjectionClosed
    (And.intro E.boundednessClosed E.reproducerPropertyClosed)

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
