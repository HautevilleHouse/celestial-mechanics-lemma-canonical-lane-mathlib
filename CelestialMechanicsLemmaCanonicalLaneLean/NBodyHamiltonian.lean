import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure NBodyConfiguration where
  masses : Type
  positions : Type
  momenta : Type

structure HamiltonianIntegrability where
  hamiltonian : Prop
  canonicalEquations : Prop
  firstIntegrals : Prop
  integrabilityCondition : Prop

structure IntegrabilityEvidence (H : HamiltonianIntegrability) where
  hamiltonianClosed : H.hamiltonian
  canonicalEquationsClosed : H.canonicalEquations
  firstIntegralsClosed : H.firstIntegrals
  integrabilityConditionClosed : H.integrabilityCondition

def IntegrabilityClosed (H : HamiltonianIntegrability) : Prop :=
  H.hamiltonian ∧ H.canonicalEquations ∧ H.firstIntegrals ∧ H.integrabilityCondition

theorem integrability_closed_from_evidence (H : HamiltonianIntegrability)
    (E : IntegrabilityEvidence H) : IntegrabilityClosed H := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.canonicalEquationsClosed
      (And.intro E.firstIntegralsClosed E.integrabilityConditionClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse