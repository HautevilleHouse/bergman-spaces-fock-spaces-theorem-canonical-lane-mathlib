import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanSpacePackage where
  domain : Type u
  domainTopology : TopologicalSpace domain
  domainComplexStructure : ComplexStructure domain
  measure : Measure domain
  integrableHolomorphicFunctions : Type v
  bergmanKernel : Type w
  kernelReproducingProperty : Prop
  projectionBounded : Prop
  projectionIdempotent : Prop
  orthonormalBasisExists : Prop

structure BergmanSpaceEvidence (B : BergmanSpacePackage) where
  kernelReproducingPropertyClosed : B.kernelReproducingProperty
  projectionBoundedClosed : B.projectionBounded
  projectionIdempotentClosed : B.projectionIdempotent
  orthonormalBasisExistsClosed : B.orthonormalBasisExists

def BergmanSpaceClosed (B : BergmanSpacePackage) : Prop :=
  B.kernelReproducingProperty ∧ B.projectionBounded ∧ B.projectionIdempotent ∧ B.orthonormalBasisExists

theorem bergman_space_closed_from_evidence (B : BergmanSpacePackage) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.kernelReproducingPropertyClosed
    (And.intro E.projectionBoundedClosed
      (And.intro E.projectionIdempotentClosed E.orthonormalBasisExistsClosed))

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse