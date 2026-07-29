import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundLemmaBridge
import HautevilleHouse.DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundLemmaGate

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

def FiniteGroundLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem finite_ground_lemma_endgame (A : AdmissibleClass) :
    FiniteGroundLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse