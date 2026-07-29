import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure EntropyPackage (G : GroundSpace) where
  topologicalEntropy : Prop
  measureTheoreticEntropy : Prop
  variationalPrinciple : Prop

structure EntropyEvidence (G : GroundSpace) (E : EntropyPackage G) where
  topologicalEntropyClosed : E.topologicalEntropy
  measureTheoreticEntropyClosed : E.measureTheoreticEntropy
  variationalPrincipleClosed : E.variationalPrinciple

def EntropyClosed (G : GroundSpace) (E : EntropyPackage G) : Prop :=
  E.topologicalEntropy ∧ E.measureTheoreticEntropy ∧ E.variationalPrinciple

theorem entropy_closed_from_evidence (G : GroundSpace) (E : EntropyPackage G) (Ev : EntropyEvidence G E) :
    EntropyClosed G E := by
  exact And.intro Ev.topologicalEntropyClosed (And.intro Ev.measureTheoreticEntropyClosed Ev.variationalPrincipleClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse