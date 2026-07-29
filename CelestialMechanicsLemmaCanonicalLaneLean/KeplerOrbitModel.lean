import CelestialMechanicsLemmaCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure KeplerOrbitPackage (S : CelestialSystem) where
  semiMajorAxis : ℝ
  eccentricity : ℝ
  orbitalPeriod : ℝ
  keplerFirstLaw : Prop
  keplerSecondLaw : Prop
  keplerThirdLaw : Prop

structure KeplerOrbitEvidence {S : CelestialSystem} (K : KeplerOrbitPackage S) where
  keplerFirstLawClosed : K.keplerFirstLaw
  keplerSecondLawClosed : K.keplerSecondLaw
  keplerThirdLawClosed : K.keplerThirdLaw

def KeplerOrbitClosed {S : CelestialSystem} (K : KeplerOrbitPackage S) : Prop :=
  K.keplerFirstLaw ∧ K.keplerSecondLaw ∧ K.keplerThirdLaw

theorem kepler_orbit_closed_from_evidence {S : CelestialSystem}
    (K : KeplerOrbitPackage S) (E : KeplerOrbitEvidence K) :
    KeplerOrbitClosed K := by
  exact And.intro E.keplerFirstLawClosed
    (And.intro E.keplerSecondLawClosed E.keplerThirdLawClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse