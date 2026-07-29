import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure RecurrenceAnalysisPackage where
  stateSpace : Type u
  dynamics : stateSpace -> stateSpace
  recurrenceSet : Set stateSpace
  poincareRecurrence : Prop
  finiteGroundProperty : Prop

structure RecurrenceAnalysisEvidence (R : RecurrenceAnalysisPackage) where
  poincareRecurrenceClosed : R.poincareRecurrence
  finiteGroundPropertyClosed : R.finiteGroundProperty

def RecurrenceAnalysisClosed (R : RecurrenceAnalysisPackage) : Prop :=
  R.poincareRecurrence ∧ R.finiteGroundProperty

theorem recurrence_analysis_closed_from_evidence (R : RecurrenceAnalysisPackage)
    (E : RecurrenceAnalysisEvidence R) : RecurrenceAnalysisClosed R :=
  And.intro E.poincareRecurrenceClosed E.finiteGroundPropertyClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse