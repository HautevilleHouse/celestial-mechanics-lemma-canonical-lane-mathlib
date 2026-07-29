import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.NBodyHamiltonian

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure SymmetryGroup where
  generator : Type
  actionDefined : Prop

structure ReducedPhaseSpace where
  momentumMap : Prop
  casimirs : Prop
  reductionSteps : Prop
  reducedDynamics : Prop

structure ReductionEvidence (R : ReducedPhaseSpace) where
  momentumMapClosed : R.momentumMap
  casimirsClosed : R.casimirs
  reductionStepsClosed : R.reductionSteps
  reducedDynamicsClosed : R.reducedDynamics

def ReductionClosed (R : ReducedPhaseSpace) : Prop :=
  R.momentumMap ∧ R.casimirs ∧ R.reductionSteps ∧ R.reducedDynamics

theorem reduction_closed_from_evidence (R : ReducedPhaseSpace)
    (E : ReductionEvidence R) : ReductionClosed R := by
  exact And.intro E.momentumMapClosed
    (And.intro E.casimirsClosed
      (And.intro E.reductionStepsClosed E.reducedDynamicsClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse