import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure DynamicalFiniteGroundObject where
  space : Type u
  topology : TopologicalSpace space
  dynamics : space → space
  finiteGroundSet : Finset space
  invariantUnderDynamics : Prop
  conclusion : invariantUnderDynamics

structure AdmissibleClass where
  object : DynamicalFiniteGroundObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse