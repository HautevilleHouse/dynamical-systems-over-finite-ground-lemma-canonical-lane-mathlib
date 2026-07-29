import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure FiniteGroundDynamicsPackage where
  stateSpace : Type u
  transitionFunction : stateSpace -> stateSpace
  finiteGroundSet : Finset stateSpace
  closedUnderTransition : ∀ x ∈ finiteGroundSet, transitionFunction x ∈ finiteGroundSet
  groundLemmaStatement : Prop

structure FiniteGroundDynamicsEvidence (P : FiniteGroundDynamicsPackage) where
  closedUnderTransitionClosed : P.closedUnderTransition
  groundLemmaStatementClosed : P.groundLemmaStatement

def FiniteGroundDynamicsClosed (P : FiniteGroundDynamicsPackage) : Prop :=
  P.closedUnderTransition ∧ P.groundLemmaStatement

theorem finite_ground_dynamics_closed_from_evidence (P : FiniteGroundDynamicsPackage)
    (E : FiniteGroundDynamicsEvidence P) : FiniteGroundDynamicsClosed P :=
  And.intro E.closedUnderTransitionClosed E.groundLemmaStatementClosed

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse