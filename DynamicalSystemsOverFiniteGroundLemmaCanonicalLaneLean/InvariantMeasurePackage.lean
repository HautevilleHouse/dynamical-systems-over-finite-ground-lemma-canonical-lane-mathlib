import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure InvariantMeasurePackage (G : GroundSpace) where
  measure : Type
  invarianceUnderIteration : Prop
  finiteTotalMass : Prop
  ergodicDecomposition : Prop

structure InvariantMeasureEvidence (G : GroundSpace) (M : InvariantMeasurePackage G) where
  invarianceUnderIterationClosed : M.invarianceUnderIteration
  finiteTotalMassClosed : M.finiteTotalMass
  ergodicDecompositionClosed : M.ergodicDecomposition

def InvariantMeasureClosed (G : GroundSpace) (M : InvariantMeasurePackage G) : Prop :=
  M.invarianceUnderIteration ∧ M.finiteTotalMass ∧ M.ergodicDecomposition

theorem invariant_measure_closed_from_evidence (G : GroundSpace) (M : InvariantMeasurePackage G) (E : InvariantMeasureEvidence G M) :
    InvariantMeasureClosed G M := by
  exact And.intro E.invarianceUnderIterationClosed (And.intro E.finiteTotalMassClosed E.ergodicDecompositionClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse