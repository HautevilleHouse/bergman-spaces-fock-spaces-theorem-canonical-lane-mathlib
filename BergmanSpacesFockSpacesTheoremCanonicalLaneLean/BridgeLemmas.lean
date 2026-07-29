import HautevilleHouse.BergmanSpacesFockSpacesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
