import CelestialMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure KeplerianOrbitsPackage where
  centralMass : ℝ
  gravitationalParameter : ℝ
  orbitalElements : Prop
  energyConservation : Prop
  angularMomentumConservation : Prop

structure KeplerianOrbitsEvidence (K : KeplerianOrbitsPackage) where
  orbitalElementsClosed : K.orbitalElements
  energyConservationClosed : K.energyConservation
  angularMomentumConservationClosed : K.angularMomentumConservation

def KeplerianOrbitsClosed (K : KeplerianOrbitsPackage) : Prop :=
  K.orbitalElements ∧ K.energyConservation ∧ K.angularMomentumConservation

theorem keplerian_orbits_closed_from_evidence (K : KeplerianOrbitsPackage)
    (E : KeplerianOrbitsEvidence K) : KeplerianOrbitsClosed K := by
  exact And.intro E.orbitalElementsClosed
    (And.intro E.energyConservationClosed E.angularMomentumConservationClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
