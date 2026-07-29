import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundStructure

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure ConvergenceGuaranteePackage (A : AdmissibleClass) where
  iterationMap : A.object.space.carrier -> A.object.space.carrier
  fixedPointExists : Prop
  convergenceRate : Prop

structure ConvergenceGuaranteeEvidence {A : AdmissibleClass} (G : ConvergenceGuaranteePackage A) where
  fixedPointExistsClosed : G.fixedPointExists
  convergenceRateClosed : G.convergenceRate

def ConvergenceGuaranteeClosed {A : AdmissibleClass} (G : ConvergenceGuaranteePackage A) : Prop :=
  G.fixedPointExists ∧ G.convergenceRate

theorem convergence_guarantee_closed_from_evidence {A : AdmissibleClass} (G : ConvergenceGuaranteePackage A) (E : ConvergenceGuaranteeEvidence G) :
    ConvergenceGuaranteeClosed G := by
  exact And.intro E.fixedPointExistsClosed E.convergenceRateClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse