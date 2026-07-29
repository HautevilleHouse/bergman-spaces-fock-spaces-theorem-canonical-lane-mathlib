import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanFockAdmittedObject where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  measure : spaceType → Prop
  bergmanSpaceDefined : Prop
  fockSpaceDefined : Prop
  conclusion : bergmanSpaceDefined ∧ fockSpaceDefined

structure AdmissibleClass where
  object : BergmanFockAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanFockWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse