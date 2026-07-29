import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure OrbitStabilityPackage where
  centralForceLaw : Prop
  perturbationBound : Prop
  stabilityCriterion : Prop
  stabilityThreshold : Prop

structure OrbitStabilityEvidence (O : OrbitStabilityPackage) where
  centralForceLawClosed : O.centralForceLaw
  perturbationBoundClosed : O.perturbationBound
  stabilityCriterionClosed : O.stabilityCriterion
  stabilityThresholdClosed : O.stabilityThreshold

def OrbitStabilityClosed (O : OrbitStabilityPackage) : Prop :=
  O.centralForceLaw ∧ O.perturbationBound ∧ O.stabilityCriterion ∧ O.stabilityThreshold

theorem orbit_stability_closed_from_evidence (O : OrbitStabilityPackage) (E : OrbitStabilityEvidence O) :
    OrbitStabilityClosed O := by
  exact And.intro E.centralForceLawClosed
    (And.intro E.perturbationBoundClosed
      (And.intro E.stabilityCriterionClosed E.stabilityThresholdClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse