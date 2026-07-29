import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure ThreeBodyRegularizationPackage where
  regularizedHamiltonian : Prop
  collisionRemoval : Prop
  timeRegularization : Prop
  symplecticStructure : Prop

structure ThreeBodyRegularizationEvidence (P : ThreeBodyRegularizationPackage) where
  regularizedHamiltonianClosed : P.regularizedHamiltonian
  collisionRemovalClosed : P.collisionRemoval
  timeRegularizationClosed : P.timeRegularization
  symplecticStructureClosed : P.symplecticStructure

def ThreeBodyRegularizationClosed (P : ThreeBodyRegularizationPackage) : Prop :=
  P.regularizedHamiltonian ∧ P.collisionRemoval ∧ P.timeRegularization ∧ P.symplecticStructure

theorem three_body_regularization_closed_from_evidence (P : ThreeBodyRegularizationPackage)
    (E : ThreeBodyRegularizationEvidence P) : ThreeBodyRegularizationClosed P := by
  exact And.intro E.regularizedHamiltonianClosed
    (And.intro E.collisionRemovalClosed
      (And.intro E.timeRegularizationClosed E.symplecticStructureClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
