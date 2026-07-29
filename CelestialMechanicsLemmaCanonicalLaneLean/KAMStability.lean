import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsLemmaCanonicalLaneLean.PerturbationSeries

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure KAMConditions where
  nondegeneracy : Prop
  diophantineCondition : Prop
  perturbationSmallness : Prop

structure InvariantTorus where
  torusExists : Prop
  frequencyVector : Prop
  stabilityEstimate : Prop

structure KAMEvidence (K : KAMConditions) (T : InvariantTorus) where
  nondegeneracyClosed : K.nondegeneracy
  diophantineConditionClosed : K.diophantineCondition
  perturbationSmallnessClosed : K.perturbationSmallness
  torusExistsClosed : T.torusExists
  stabilityEstimateClosed : T.stabilityEstimate

def KAMClosed (K : KAMConditions) (T : InvariantTorus) : Prop :=
  K.nondegeneracy ∧ K.diophantineCondition ∧ K.perturbationSmallness ∧
  T.torusExists ∧ T.stabilityEstimate

theorem kam_closed_from_evidence (K : KAMConditions) (T : InvariantTorus)
    (E : KAMEvidence K T) : KAMClosed K T := by
  exact And.intro E.nondegeneracyClosed
    (And.intro E.diophantineConditionClosed
      (And.intro E.perturbationSmallnessClosed
        (And.intro E.torusExistsClosed E.stabilityEstimateClosed)))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse