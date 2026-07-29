import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanFockSpacesTheoremCanonicalLaneLean

structure FockSpace where
  entireFunctions : Type
  gaussianWeight : Prop
  completeness : Prop
  reproducingKernel : Prop
  weylTransform : Prop

def FockSpaceClosed (F : FockSpace) : Prop :=
  F.completeness ∧ F.reproducingKernel ∧ F.weylTransform

end BergmanFockSpacesTheoremCanonicalLaneLean
end HautevilleHouse