import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure CentralForcePackage where
  potentialEnergy : ℝ → ℝ
  angularMomentum : ℝ
  effectivePotential : ℝ → ℝ
  boundedOrbits : Prop
  orbitaTypes : List String

structure CentralForceEvidence (C : CentralForcePackage) where
  boundedOrbitsClosed : C.boundedOrbits
  orbitaTypesNonempty : C.orbitaTypes ≠ []

def CentralForceClosed (C : CentralForcePackage) : Prop :=
  C.boundedOrbits ∧ C.orbitaTypes ≠ []

theorem central_force_closed_from_evidence (C : CentralForcePackage) (E : CentralForceEvidence C) :
    CentralForceClosed C := by
  exact And.intro E.boundedOrbitsClosed E.orbitaTypesNonempty

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse