import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundDynamics

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure CanonicalDynamicalSystem {G : FiniteGroundSpace} (DS : DynamicalSystem G) where
  orbitFinite : Prop
  attractorReached : Prop
  periodicOrbitsClassified : Prop
  stabilityUnderPerturbation : Prop

structure CanonicalDynamicalEvidence {G : FiniteGroundSpace}
    {DS : DynamicalSystem G} (C : CanonicalDynamicalSystem DS) where
  orbitFiniteClosed : C.orbitFinite
  attractorReachedClosed : C.attractorReached
  periodicOrbitsClassifiedClosed : C.periodicOrbitsClassified
  stabilityUnderPerturbationClosed : C.stabilityUnderPerturbation

def CanonicalDynamicalClosed {G : FiniteGroundSpace}
    {DS : DynamicalSystem G} (C : CanonicalDynamicalSystem DS) : Prop :=
  C.orbitFinite ∧ C.attractorReached ∧
  C.periodicOrbitsClassified ∧ C.stabilityUnderPerturbation

theorem canonical_dynamical_closed_from_evidence
    {G : FiniteGroundSpace} {DS : DynamicalSystem G}
    (C : CanonicalDynamicalSystem DS) (E : CanonicalDynamicalEvidence C) :
    CanonicalDynamicalClosed C := by
  exact And.intro E.orbitFiniteClosed
    (And.intro E.attractorReachedClosed
      (And.intro E.periodicOrbitsClassifiedClosed E.stabilityUnderPerturbationClosed))

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse