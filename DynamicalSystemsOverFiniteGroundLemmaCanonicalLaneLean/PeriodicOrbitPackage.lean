import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure PeriodicOrbitPackage (G : GroundSpace) where
  densePeriodicPoints : Prop
  shadowingProperty : Prop
  specificationProperty : Prop

structure PeriodicOrbitEvidence (G : GroundSpace) (P : PeriodicOrbitPackage G) where
  densePeriodicPointsClosed : P.densePeriodicPoints
  shadowingPropertyClosed : P.shadowingProperty
  specificationPropertyClosed : P.specificationProperty

def PeriodicOrbitClosed (G : GroundSpace) (P : PeriodicOrbitPackage G) : Prop :=
  P.densePeriodicPoints ∧ P.shadowingProperty ∧ P.specificationProperty

theorem periodic_orbit_closed_from_evidence (G : GroundSpace) (P : PeriodicOrbitPackage G) (E : PeriodicOrbitEvidence G P) :
    PeriodicOrbitClosed G P := by
  exact And.intro E.densePeriodicPointsClosed (And.intro E.shadowingPropertyClosed E.specificationPropertyClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse