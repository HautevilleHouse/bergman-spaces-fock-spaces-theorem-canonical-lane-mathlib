import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BergmanSpacesFockSpacesTheoremCanonicalLaneLean.FockSpacePackage

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure FockKernelPackage (F : FockSpacePackage) where
  kernelFunction : Type u
  reproducingProperty : Prop
  explicitFormula : Prop

structure FockKernelEvidence {F : FockSpacePackage} (K : FockKernelPackage F) where
  reproducingPropertyClosed : K.reproducingProperty
  explicitFormulaClosed : K.explicitFormula

def FockKernelClosed {F : FockSpacePackage} (K : FockKernelPackage F) : Prop :=
  K.reproducingProperty ∧ K.explicitFormula

theorem fock_kernel_closed_from_evidence {F : FockSpacePackage} (K : FockKernelPackage F) (E : FockKernelEvidence K) : FockKernelClosed K :=
  And.intro E.reproducingPropertyClosed E.explicitFormulaClosed

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse