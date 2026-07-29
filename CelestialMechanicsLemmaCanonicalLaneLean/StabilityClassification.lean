import CelestialMechanicsLemmaCanonicalLaneLean.HamiltonianPerturbation

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure StabilityClassificationPackage {P : NBodyPackage} {H : P.n = 2}
    (Q : HamiltonianPerturbationPackage H) where
  lagrangePoints : Prop
  linearStability : Prop
  nonlinearStability : Prop
  collisionAvoidance : Prop
  longTermBoundedness : Prop

structure StabilityClassificationEvidence {P : NBodyPackage} {H : P.n = 2}
    {Q : HamiltonianPerturbationPackage H}
    (S : StabilityClassificationPackage Q) where
  lagrangePointsClosed : S.lagrangePoints
  linearStabilityClosed : S.linearStability
  nonlinearStabilityClosed : S.nonlinearStability
  collisionAvoidanceClosed : S.collisionAvoidance
  longTermBoundednessClosed : S.longTermBoundedness

def StabilityClassificationClosed {P : NBodyPackage} {H : P.n = 2}
    {Q : HamiltonianPerturbationPackage H}
    (S : StabilityClassificationPackage Q) : Prop :=
  S.lagrangePoints ∧ S.linearStability ∧ S.nonlinearStability ∧
  S.collisionAvoidance ∧ S.longTermBoundedness

theorem stability_classification_closed_from_evidence
    {P : NBodyPackage} {H : P.n = 2} {Q : HamiltonianPerturbationPackage H}
    (S : StabilityClassificationPackage Q)
    (E : StabilityClassificationEvidence S) : StabilityClassificationClosed S := by
  exact And.intro E.lagrangePointsClosed
    (And.intro E.linearStabilityClosed
      (And.intro E.nonlinearStabilityClosed
        (And.intro E.collisionAvoidanceClosed E.longTermBoundednessClosed)))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse