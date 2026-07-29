import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure NBodyRegularizationPackage (A : AdmissibleClass) where
  collisionRegularization : Prop
  timeRenormalization : Prop
  energyConservation : Prop
  angularMomentumConservation : Prop

structure NBodyRegularizationEvidence {A : AdmissibleClass} (R : NBodyRegularizationPackage A) where
  collisionRegularizationClosed : R.collisionRegularization
  timeRenormalizationClosed : R.timeRenormalization
  energyConservationClosed : R.energyConservation
  angularMomentumConservationClosed : R.angularMomentumConservation

def NBodyRegularizationClosed {A : AdmissibleClass} (R : NBodyRegularizationPackage A) : Prop :=
  R.collisionRegularization ∧ R.timeRenormalization ∧
  R.energyConservation ∧ R.angularMomentumConservation

theorem nbody_regularization_closed_from_evidence
    {A : AdmissibleClass} (R : NBodyRegularizationPackage A)
    (E : NBodyRegularizationEvidence R) : NBodyRegularizationClosed R := by
  exact And.intro E.collisionRegularizationClosed
    (And.intro E.timeRenormalizationClosed
      (And.intro E.energyConservationClosed E.angularMomentumConservationClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse