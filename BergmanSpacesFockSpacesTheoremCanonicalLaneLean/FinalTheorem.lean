import HautevilleHouse.BergmanSpacesFockSpacesTheoremCanonicalLaneLean.BergmanFockBridge

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

def ConstrainedBergmanFockClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bergman_fock_endgame (A : AdmissibleClass) :
    ConstrainedBergmanFockClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse