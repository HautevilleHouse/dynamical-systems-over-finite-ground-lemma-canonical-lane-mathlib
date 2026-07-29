import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure MixingPropertiesPackage where
  stateSpace : Type u
  dynamics : stateSpace -> stateSpace
  strongMixing : Prop
  weakMixing : Prop
  topologicalTransitivity : Prop
  finiteGroundLemmaApplied : Prop

structure MixingPropertiesEvidence (M : MixingPropertiesPackage) where
  strongMixingClosed : M.strongMixing
  weakMixingClosed : M.weakMixing
  topologicalTransitivityClosed : M.topologicalTransitivity
  finiteGroundLemmaAppliedClosed : M.finiteGroundLemmaApplied

def MixingPropertiesClosed (M : MixingPropertiesPackage) : Prop :=
  M.strongMixing ∧ M.weakMixing ∧ M.topologicalTransitivity ∧ M.finiteGroundLemmaApplied

theorem mixing_properties_closed_from_evidence (M : MixingPropertiesPackage)
    (E : MixingPropertiesEvidence M) : MixingPropertiesClosed M :=
  And.intro E.strongMixingClosed
    (And.intro E.weakMixingClosed
      (And.intro E.topologicalTransitivityClosed E.finiteGroundLemmaAppliedClosed))

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse