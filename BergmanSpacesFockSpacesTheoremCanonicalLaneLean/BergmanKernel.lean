import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFockSpacesTheoremCanonicalLaneLean.BergmanSpacePackage

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanKernelPackage (B : BergmanSpacePackage) where
  kernelFunction : Type u
  reproducingProperty : Prop
  explicitFormula : Prop

structure BergmanKernelEvidence {B : BergmanSpacePackage} (K : BergmanKernelPackage B) where
  reproducingPropertyClosed : K.reproducingProperty
  explicitFormulaClosed : K.explicitFormula

def BergmanKernelClosed {B : BergmanSpacePackage} (K : BergmanKernelPackage B) : Prop :=
  K.reproducingProperty ∧ K.explicitFormula

theorem bergman_kernel_closed_from_evidence {B : BergmanSpacePackage} (K : BergmanKernelPackage B) (E : BergmanKernelEvidence K) : BergmanKernelClosed K :=
  And.intro E.reproducingPropertyClosed E.explicitFormulaClosed

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse