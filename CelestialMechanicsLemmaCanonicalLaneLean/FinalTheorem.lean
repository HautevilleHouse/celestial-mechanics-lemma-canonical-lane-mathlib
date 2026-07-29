import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

def ConstrainedCelestialMechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_celestial_mechanics_endgame (A : AdmissibleClass) :
    ConstrainedCelestialMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse