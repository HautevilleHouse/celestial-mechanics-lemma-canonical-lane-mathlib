import CelestialMechanicsLemmaCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure StabilityPerturbationPackage (S : CelestialSystem) where
  smallPerturbationBound : ℝ
  orbitDeviationBound : ℝ
  stabilityCondition : Prop
  perturbationControlled : Prop

structure StabilityPerturbationEvidence {S : CelestialSystem}
    (P : StabilityPerturbationPackage S) where
  stabilityConditionClosed : P.stabilityCondition
  perturbationControlledClosed : P.perturbationControlled

def StabilityPerturbationClosed {S : CelestialSystem}
    (P : StabilityPerturbationPackage S) : Prop :=
  P.stabilityCondition ∧ P.perturbationControlled

theorem stability_perturbation_closed_from_evidence {S : CelestialSystem}
    (P : StabilityPerturbationPackage S) (E : StabilityPerturbationEvidence P) :
    StabilityPerturbationClosed P := by
  exact And.intro E.stabilityConditionClosed E.perturbationControlledClosed

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse