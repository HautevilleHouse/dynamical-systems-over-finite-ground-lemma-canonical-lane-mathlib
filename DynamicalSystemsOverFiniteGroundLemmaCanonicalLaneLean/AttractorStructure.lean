import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure AttractorStructurePackage where
  stateSpace : Type u
  dynamics : stateSpace -> stateSpace
  attractorSet : Set stateSpace
  forwardInvariant : ∀ x ∈ attractorSet, dynamics x ∈ attractorSet
  attractingProperty : Prop
  finiteGroundLemmaUsed : Prop

structure AttractorStructureEvidence (A : AttractorStructurePackage) where
  forwardInvariantClosed : A.forwardInvariant
  attractingPropertyClosed : A.attractingProperty
  finiteGroundLemmaUsedClosed : A.finiteGroundLemmaUsed

def AttractorStructureClosed (A : AttractorStructurePackage) : Prop :=
  A.forwardInvariant ∧ A.attractingProperty ∧ A.finiteGroundLemmaUsed

theorem attractor_structure_closed_from_evidence (A : AttractorStructurePackage)
    (E : AttractorStructureEvidence A) : AttractorStructureClosed A :=
  And.intro E.forwardInvariantClosed
    (And.intro E.attractingPropertyClosed E.finiteGroundLemmaUsedClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse