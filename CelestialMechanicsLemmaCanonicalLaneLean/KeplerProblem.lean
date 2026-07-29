import CelestialMechanicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure KeplerianOrbitData where
  semiMajorAxis : ℝ
  eccentricity : ℝ
  inclination : ℝ
  ascendingNodeLongitude : ℝ
  argumentOfPeriapsis : ℝ
  meanAnomaly : ℝ

def orbitalEnergy (a : ℝ) (e : ℝ) (mu : ℝ) : ℝ := -mu / (2 * a)

def angularMomentumNorm (a : ℝ) (e : ℝ) (mu : ℝ) : ℝ := Real.sqrt (mu * a * (1 - e^2))

theorem kepler_third_law (T : ℝ) (a : ℝ) (mu : ℝ) : T^2 = (4 * π^2 / mu) * a^3 := by
  admit

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
