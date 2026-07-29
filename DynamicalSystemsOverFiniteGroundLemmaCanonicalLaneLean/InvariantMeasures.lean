import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.CanonicalDynamicalSystems

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure InvariantMeasurePackage {G : FiniteGroundSpace}
    {DS : DynamicalSystem G} (C : CanonicalDynamicalSystem DS) where
  measureSpace : Type u
  invariantMeasure : measureSpace → Prop
  ergodicDecomposition : Prop
  entropyDefined : Prop

structure InvariantMeasureEvidence {G : FiniteGroundSpace}
    {DS : DynamicalSystem G} {C : CanonicalDynamicalSystem DS}
    (P : InvariantMeasurePackage C) where
  measureSpaceClosed : Prop
  invariantMeasureClosed : P.invariantMeasure
  ergodicDecompositionClosed : P.ergodicDecomposition
  entropyDefinedClosed : P.entropyDefined

def InvariantMeasureClosed {G : FiniteGroundSpace}
    {DS : DynamicalSystem G} {C : CanonicalDynamicalSystem DS}
    (P : InvariantMeasurePackage C) : Prop :=
  P.invariantMeasure ∧ P.ergodicDecomposition ∧ P.entropyDefined

theorem invariant_measure_closed_from_evidence
    {G : FiniteGroundSpace} {DS : DynamicalSystem G}
    {C : CanonicalDynamicalSystem DS} (P : InvariantMeasurePackage C)
    (E : InvariantMeasureEvidence P) : InvariantMeasureClosed P := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.ergodicDecompositionClosed E.entropyDefinedClosed)

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse