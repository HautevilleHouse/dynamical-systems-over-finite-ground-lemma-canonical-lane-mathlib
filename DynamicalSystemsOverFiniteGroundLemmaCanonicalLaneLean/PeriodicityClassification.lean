import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundStructure

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure PeriodicityClassificationPackage (A : AdmissibleClass) where
  orbitLengths : List Nat
  maxPeriod : Nat
  classificationComplete : Prop

structure PeriodicityClassificationEvidence {A : AdmissibleClass} (P : PeriodicityClassificationPackage A) where
  classificationCompleteClosed : P.classificationComplete

def PeriodicityClassificationClosed {A : AdmissibleClass} (P : PeriodicityClassificationPackage A) : Prop :=
  P.classificationComplete

theorem periodicity_classification_closed_from_evidence {A : AdmissibleClass} (P : PeriodicityClassificationPackage A) (E : PeriodicityClassificationEvidence P) :
    PeriodicityClassificationClosed P := by
  exact E.classificationCompleteClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse