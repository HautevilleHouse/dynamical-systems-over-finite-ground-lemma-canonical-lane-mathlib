import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure RecurrencePackage (G : GroundSpace) where
  poincareRecurrence : Prop
  minimalSetExistence : Prop
  topologicalTransitivity : Prop

structure RecurrenceEvidence (G : GroundSpace) (R : RecurrencePackage G) where
  poincareRecurrenceClosed : R.poincareRecurrence
  minimalSetExistenceClosed : R.minimalSetExistence
  topologicalTransitivityClosed : R.topologicalTransitivity

def RecurrenceClosed (G : GroundSpace) (R : RecurrencePackage G) : Prop :=
  R.poincareRecurrence ∧ R.minimalSetExistence ∧ R.topologicalTransitivity

theorem recurrence_closed_from_evidence (G : GroundSpace) (R : RecurrencePackage G) (E : RecurrenceEvidence G R) :
    RecurrenceClosed G R := by
  exact And.intro E.poincareRecurrenceClosed (And.intro E.minimalSetExistenceClosed E.topologicalTransitivityClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse