import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CelestialBody where
  mass : ℝ
  position : ℝ × ℝ × ℝ
  velocity : ℝ × ℝ × ℝ

structure CelestialSystem where
  bodies : List CelestialBody
  lawOfGravity : ℝ → ℝ
  isIsolated : Prop
  hasKeplerConstraint : Prop

structure CelestialAdmittedObject where
  system : CelestialSystem
  conservedEnergy : Prop
  angularMomentumConserved : Prop
  orbitStable : Prop
  conclusion : orbitStable

def CelestialWitnessClosed (O : CelestialAdmittedObject) : Prop :=
  O.orbitStable

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse