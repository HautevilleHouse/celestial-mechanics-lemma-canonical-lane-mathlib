import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CelestialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse