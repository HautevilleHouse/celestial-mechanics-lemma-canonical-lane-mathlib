import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.NBodyHamiltonian

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure PerturbationExpansion where
  smallParameter : Prop
  seriesConvergence : Prop
  secularTerms : Prop
  averagingProcedure : Prop

structure PerturbationEvidence (P : PerturbationExpansion) where
  smallParameterClosed : P.smallParameter
  seriesConvergenceClosed : P.seriesConvergence
  secularTermsClosed : P.secularTerms
  averagingProcedureClosed : P.averagingProcedure

def PerturbationClosed (P : PerturbationExpansion) : Prop :=
  P.smallParameter ∧ P.seriesConvergence ∧ P.secularTerms ∧ P.averagingProcedure

theorem perturbation_closed_from_evidence (P : PerturbationExpansion)
    (E : PerturbationEvidence P) : PerturbationClosed P := by
  exact And.intro E.smallParameterClosed
    (And.intro E.seriesConvergenceClosed
      (And.intro E.secularTermsClosed E.averagingProcedureClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse