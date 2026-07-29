import HautevilleHouse.BergmanSpacesFockSpacesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BergmanSpacesFockSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BergmanSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BergmanAdmittedObject where
  space : BergmanSpace
  boundedSymmetricDomain : Prop
  weightedBergmanSpace : Prop
  reproducingKernel : Type
  kernelTopology : TopologicalSpace reproducingKernel
  kernelReproduces : Prop
  conclusion : kernelReproduces

structure BergmanEndgameState where
  object : BergmanAdmittedObject

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.kernelReproduces

end BergmanSpacesFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse
