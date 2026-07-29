import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure FiniteGroundSpace (A : AdmissibleClass) where
  carrier : Type u
  cardinality : Nat
  discreteTopology : TopologicalSpace carrier
  cardinalityPositive : cardinality > 0

structure FiniteGroundAdmittedObject (A : AdmissibleClass) where
  space : FiniteGroundSpace A
  dynamicsClosed : Prop
  conclusion : dynamicsClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse