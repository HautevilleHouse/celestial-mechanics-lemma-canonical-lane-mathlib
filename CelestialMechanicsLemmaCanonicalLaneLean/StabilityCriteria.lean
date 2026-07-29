import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure StabilityCriteriaPackage where
  lyapunovStability : Prop
  kozaiMechanism : Prop
  resonanceOverlap : Prop
  hillStability : Prop

structure StabilityCriteriaEvidence (P : StabilityCriteriaPackage) where
  lyapunovStabilityClosed : P.lyapunovStability
  kozaiMechanismClosed : P.kozaiMechanism
  resonanceOverlapClosed : P.resonanceOverlap
  hillStabilityClosed : P.hillStability

def StabilityCriteriaClosed (P : StabilityCriteriaPackage) : Prop :=
  P.lyapunovStability ∧ P.kozaiMechanism ∧ P.resonanceOverlap ∧ P.hillStability

theorem stability_criteria_closed_from_evidence (P : StabilityCriteriaPackage)
    (E : StabilityCriteriaEvidence P) : StabilityCriteriaClosed P := by
  exact And.intro E.lyapunovStabilityClosed
    (And.intro E.kozaiMechanismClosed
      (And.intro E.resonanceOverlapClosed E.hillStabilityClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
