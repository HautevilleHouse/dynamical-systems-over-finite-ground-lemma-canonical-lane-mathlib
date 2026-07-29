import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure InvariantMeasurePackage where
  stateSpace : Type u
  sigmaAlgebra : Set (Set stateSpace)
  measure : stateSpace -> ℝ
  totalMassOne : Finset.sum Finset.univ measure = 1
  invarianceProperty : ∀ A : Set stateSpace, measure A = measure (f⁻¹' A) where f : stateSpace -> stateSpace

structure InvariantMeasureEvidence (M : InvariantMeasurePackage) where
  totalMassOneClosed : M.totalMassOne
  invariancePropertyClosed : M.invarianceProperty

def InvariantMeasureClosed (M : InvariantMeasurePackage) : Prop :=
  M.totalMassOne ∧ M.invarianceProperty

theorem invariant_measure_closed_from_evidence (M : InvariantMeasurePackage)
    (E : InvariantMeasureEvidence M) : InvariantMeasureClosed M :=
  And.intro E.totalMassOneClosed E.invariancePropertyClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse