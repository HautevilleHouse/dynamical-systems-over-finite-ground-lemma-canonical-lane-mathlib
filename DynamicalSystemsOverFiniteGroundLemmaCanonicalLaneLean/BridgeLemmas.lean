import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse