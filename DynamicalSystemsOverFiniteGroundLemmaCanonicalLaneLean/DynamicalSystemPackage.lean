import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure FiniteGroundSpace where
  carrier : Type u
  decidableEq : DecidableEq carrier
  finite : Fintype carrier

structure Dynamics where
  ground : FiniteGroundSpace
  step : ground.carrier → ground.carrier
  iteratedStep : ℕ → ground.carrier → ground.carrier
  iteratedStep_spec : ∀ (n : ℕ) (x : ground.carrier), iteratedStep n x = Nat.iterate step n x

structure FiniteGroundDynamicsPackage (D : Dynamics) where
  orbitsDecomposed : Prop
  periodicPointsClassified : Prop
  limitCyclesIdentified : Prop
  attractorStructure : Prop

structure FiniteGroundDynamicsEvidence {D : Dynamics} (F : FiniteGroundDynamicsPackage D) where
  orbitsDecomposedClosed : F.orbitsDecomposed
  periodicPointsClassifiedClosed : F.periodicPointsClassified
  limitCyclesIdentifiedClosed : F.limitCyclesIdentified
  attractorStructureClosed : F.attractorStructure

def FiniteGroundDynamicsClosed {D : Dynamics} (F : FiniteGroundDynamicsPackage D) : Prop :=
  F.orbitsDecomposed ∧ F.periodicPointsClassified ∧
  F.limitCyclesIdentified ∧ F.attractorStructure

theorem finite_ground_dynamics_closed_from_evidence
    {D : Dynamics} (F : FiniteGroundDynamicsPackage D)
    (E : FiniteGroundDynamicsEvidence F) : FiniteGroundDynamicsClosed F := by
  exact And.intro E.orbitsDecomposedClosed
    (And.intro E.periodicPointsClassifiedClosed
      (And.intro E.limitCyclesIdentifiedClosed E.attractorStructureClosed))

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse