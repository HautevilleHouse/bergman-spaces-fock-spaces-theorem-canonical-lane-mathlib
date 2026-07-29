import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesTheoremCanonicalLaneLean

structure BergmanSpace where
  domain : Type
  measure : Type
  holomorphicFunctions : Type
  completeness : Prop
  reproducingKernel : Prop
  bergmanProjection : Prop

def BergmanSpaceClosed (B : BergmanSpace) : Prop :=
  B.completeness ∧ B.reproducingKernel ∧ B.bergmanProjection

end BergmanFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse