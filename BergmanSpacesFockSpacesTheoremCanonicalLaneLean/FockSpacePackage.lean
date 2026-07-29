import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure FockSpacePackage where
  dimension : Nat
  weightParameter : ℝ
  entireFunctions : Type u
  gaussianMeasure : Measure ℂ
  reproducingKernel : Type v
  kernelExplicitForm : Prop
  containmentBergmanSpace : Prop
  isometryWithBergmanSpace : Prop

default FockSpacePackage

structure FockSpaceEvidence (F : FockSpacePackage) where
  kernelExplicitFormClosed : F.kernelExplicitForm
  containmentBergmanSpaceClosed : F.containmentBergmanSpace
  isometryWithBergmanSpaceClosed : F.isometryWithBergmanSpace

def FockSpaceClosed (F : FockSpacePackage) : Prop :=
  F.kernelExplicitForm ∧ F.containmentBergmanSpace ∧ F.isometryWithBergmanSpace

theorem fock_space_closed_from_evidence (F : FockSpacePackage) (E : FockSpaceEvidence F) :
    FockSpaceClosed F := by
  exact And.intro E.kernelExplicitFormClosed
    (And.intro E.containmentBergmanSpaceClosed E.isometryWithBergmanSpaceClosed)

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse