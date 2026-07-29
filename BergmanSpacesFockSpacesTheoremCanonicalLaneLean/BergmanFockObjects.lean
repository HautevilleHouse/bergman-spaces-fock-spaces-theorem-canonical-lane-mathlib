import BergmanSpacesFockSpacesTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

structure BergmanFockSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BergmanFockAdmittedObject where
  space : BergmanFockSpace
  bergmanSpaceProperty : Prop
  fockSpaceProperty : Prop
  isomorphismProperty : Prop
  conclusion : isomorphismProperty

def BergmanFockWitnessClosed (O : BergmanFockAdmittedObject) : Prop :=
  O.isomorphismProperty

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse