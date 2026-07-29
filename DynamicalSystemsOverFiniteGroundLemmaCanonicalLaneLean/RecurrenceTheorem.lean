import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure RecurrencePackage where
  space : Type u
  topology : TopologicalSpace space
  dynamics : space → space
  finiteInvariantSet : Finset space
  poincareRecurrence : ∀ x ∈ finiteInvariantSet, ∃ n > 0, dynamics^[n] x = x

def RecurrenceClosed (R : RecurrencePackage) : Prop :=
  R.poincareRecurrence

theorem recurrence_closed (R : RecurrencePackage) :
    RecurrenceClosed R := by
  exact R.poincareRecurrence

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse