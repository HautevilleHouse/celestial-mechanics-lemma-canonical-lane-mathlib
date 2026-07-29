import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure PerturbationTheoryPackage where
  smallParameter : Prop
  averagingMethod : Prop
  secularDrift : Prop
  resonanceCondition : Prop

structure PerturbationTheoryEvidence (P : PerturbationTheoryPackage) where
  smallParameterClosed : P.smallParameter
  averagingMethodClosed : P.averagingMethod
  secularDriftClosed : P.secularDrift
  resonanceConditionClosed : P.resonanceCondition

def PerturbationTheoryClosed (P : PerturbationTheoryPackage) : Prop :=
  P.smallParameter ∧ P.averagingMethod ∧ P.secularDrift ∧ P.resonanceCondition

theorem perturbation_theory_closed_from_evidence (P : PerturbationTheoryPackage) (E : PerturbationTheoryEvidence P) :
    PerturbationTheoryClosed P := by
  exact And.intro E.smallParameterClosed
    (And.intro E.averagingMethodClosed
      (And.intro E.secularDriftClosed E.resonanceConditionClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse