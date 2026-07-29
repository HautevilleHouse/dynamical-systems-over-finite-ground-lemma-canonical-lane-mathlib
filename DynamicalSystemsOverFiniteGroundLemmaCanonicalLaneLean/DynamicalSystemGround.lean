import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure GroundSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  finiteCover : Prop

structure FiniteGroundObject where
  space : GroundSpace
  dynamicalSystem : Prop
  iterationMap : carrier → carrier
  forwardInvariantSet : Set carrier
  groundLemmaStatement : Prop
  conclusion : groundLemmaStatement

def GroundWitnessClosed (O : FiniteGroundObject) : Prop :=
  O.groundLemmaStatement

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse