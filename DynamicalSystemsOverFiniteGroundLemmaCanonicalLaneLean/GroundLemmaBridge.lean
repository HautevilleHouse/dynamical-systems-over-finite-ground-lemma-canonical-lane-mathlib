import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean.FiniteGroundStructure

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiniteGroundAdmittedObject.dynamicsClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.conclusion

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse