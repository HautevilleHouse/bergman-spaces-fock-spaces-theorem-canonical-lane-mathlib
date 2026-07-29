import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure ReproducingKernelPackage (Ω : Type) [TopologicalSpace Ω] where
  kernelFunction : Ω × Ω → ℂ
  reproducingProperty : Prop
  positivity : Prop
  holomorphicInFirst : Prop
  reproducingPropertyTerm : reproducingProperty
  positivityTerm : positivity
  holomorphicInFirstTerm : holomorphicInFirst

structure ReproducingKernelEvidence {Ω : Type} [TopologicalSpace Ω]
    (K : ReproducingKernelPackage Ω) where
  reproducingPropertyClosed : K.reproducingProperty
  positivityClosed : K.positivity
  holomorphicInFirstClosed : K.holomorphicInFirst

def ReproducingKernelClosed {Ω : Type} [TopologicalSpace Ω]
    (K : ReproducingKernelPackage Ω) : Prop :=
  K.reproducingProperty ∧ K.positivity ∧ K.holomorphicInFirst

theorem reproducing_kernel_closed_from_evidence {Ω : Type} [TopologicalSpace Ω]
    (K : ReproducingKernelPackage Ω) (E : ReproducingKernelEvidence K) :
    ReproducingKernelClosed K :=
  And.intro E.reproducingPropertyClosed
    (And.intro E.positivityClosed E.holomorphicInFirstClosed)

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
