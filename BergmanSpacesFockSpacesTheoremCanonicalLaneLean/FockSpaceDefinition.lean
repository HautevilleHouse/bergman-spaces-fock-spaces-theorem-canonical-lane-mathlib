import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure FockSpacePackage (n : ℕ) where
  dimension : ℕ := n
  gaussianMeasure : Measure (ℂ^n)
  entireFunctions : Set (ℂ^n → ℂ)
  normSquared : (ℂ^n → ℂ) → ℂ
  completeness : Prop
  closureProperty : Prop
  completenessTerm : completeness
  closurePropertyTerm : closureProperty

structure FockSpaceEvidence {n : ℕ} (F : FockSpacePackage n) where
  completenessClosed : F.completeness
  closurePropertyClosed : F.closureProperty

def FockSpaceClosed {n : ℕ} (F : FockSpacePackage n) : Prop :=
  F.completeness ∧ F.closureProperty

theorem fock_space_closed_from_evidence {n : ℕ}
    (F : FockSpacePackage n) (E : FockSpaceEvidence F) : FockSpaceClosed F :=
  And.intro E.completenessClosed E.closurePropertyClosed

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
