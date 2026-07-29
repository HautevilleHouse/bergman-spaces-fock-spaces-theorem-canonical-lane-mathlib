import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanSpacePackage (Ω : Type) [TopologicalSpace Ω] where
  domain : Type := Ω
  measure : Measure Ω
  holomorphicFunctions : Set (Ω → ℂ)
  normSquared : (Ω → ℂ) → ℂ
  completeness : Prop
  closureProperty : Prop
  completenessTerm : completeness
  closurePropertyTerm : closureProperty

structure BergmanSpaceEvidence {Ω : Type} [TopologicalSpace Ω] (B : BergmanSpacePackage Ω) where
  completenessClosed : B.completeness
  closurePropertyClosed : B.closureProperty

def BergmanSpaceClosed {Ω : Type} [TopologicalSpace Ω] (B : BergmanSpacePackage Ω) : Prop :=
  B.completeness ∧ B.closureProperty

theorem bergman_space_closed_from_evidence {Ω : Type} [TopologicalSpace Ω]
    (B : BergmanSpacePackage Ω) (E : BergmanSpaceEvidence B) : BergmanSpaceClosed B :=
  And.intro E.completenessClosed E.closurePropertyClosed

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
