import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure HamiltonianMechanicsPackage where
  symplecticStructure : Prop
  hamiltonianFunction : Prop
  canonicalEquations : Prop
  conservedQuantities : Prop

structure HamiltonianMechanicsEvidence (H : HamiltonianMechanicsPackage) where
  symplecticStructureClosed : H.symplecticStructure
  hamiltonianFunctionClosed : H.hamiltonianFunction
  canonicalEquationsClosed : H.canonicalEquations
  conservedQuantitiesClosed : H.conservedQuantities

def HamiltonianMechanicsClosed (H : HamiltonianMechanicsPackage) : Prop :=
  H.symplecticStructure ∧ H.hamiltonianFunction ∧ H.canonicalEquations ∧ H.conservedQuantities

theorem hamiltonian_mechanics_closed_from_evidence (H : HamiltonianMechanicsPackage) (E : HamiltonianMechanicsEvidence H) :
    HamiltonianMechanicsClosed H := by
  exact And.intro E.symplecticStructureClosed
    (And.intro E.hamiltonianFunctionClosed
      (And.intro E.canonicalEquationsClosed E.conservedQuantitiesClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse