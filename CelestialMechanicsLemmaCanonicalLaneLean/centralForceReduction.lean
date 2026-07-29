import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure CentralForceReductionPackage where
  angularMomentumConservation : Prop
  radialEquation : Prop
  effectivePotential : Prop
  orbitClassification : Prop

structure CentralForceReductionEvidence (P : CentralForceReductionPackage) where
  angularMomentumConservationClosed : P.angularMomentumConservation
  radialEquationClosed : P.radialEquation
  effectivePotentialClosed : P.effectivePotential
  orbitClassificationClosed : P.orbitClassification

def CentralForceReductionClosed (P : CentralForceReductionPackage) : Prop :=
  P.angularMomentumConservation ∧ P.radialEquation ∧ P.effectivePotential ∧ P.orbitClassification

theorem central_force_reduction_closed_from_evidence (P : CentralForceReductionPackage)
    (E : CentralForceReductionEvidence P) : CentralForceReductionClosed P := by
  exact And.intro E.angularMomentumConservationClosed
    (And.intro E.radialEquationClosed
      (And.intro E.effectivePotentialClosed E.orbitClassificationClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
