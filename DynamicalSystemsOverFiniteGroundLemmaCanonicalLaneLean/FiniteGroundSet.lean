import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure FiniteGroundSetPackage where
  carrier : Type u
  decidableEq : DecidableEq carrier
  ground : Finset carrier
  closedUnderDynamics : (ground.image (fun x : carrier => ?_ : carrier)) = ground

def FiniteGroundSetClosed (F : FiniteGroundSetPackage) : Prop :=
  F.closedUnderDynamics

theorem finite_ground_set_closed (F : FiniteGroundSetPackage) :
    FiniteGroundSetClosed F := by
  exact F.closedUnderDynamics

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse