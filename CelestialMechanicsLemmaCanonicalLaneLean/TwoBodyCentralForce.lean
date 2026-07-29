import CelestialMechanicsLemmaCanonicalLaneLean.GravitationalSystem

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure TwoBodyCentralForcePackage (G : GravitationalSystemPackage) where
  reducedMass : Type u
  relativePosition : Type v
  centralForceEquation : Prop
  conservationLaws : Prop
  solutionExistence : Prop

structure TwoBodyCentralForceEvidence {G : GravitationalSystemPackage}
    (F : TwoBodyCentralForcePackage G) where
  centralForceEquationClosed : F.centralForceEquation
  conservationLawsClosed : F.conservationLaws
  solutionExistenceClosed : F.solutionExistence

def TwoBodyCentralForceClosed {G : GravitationalSystemPackage}
    (F : TwoBodyCentralForcePackage G) : Prop :=
  F.centralForceEquation ∧ F.conservationLaws ∧ F.solutionExistence

theorem two_body_central_force_closed_from_evidence
    {G : GravitationalSystemPackage} (F : TwoBodyCentralForcePackage G)
    (E : TwoBodyCentralForceEvidence F) : TwoBodyCentralForceClosed F := by
  exact And.intro E.centralForceEquationClosed
    (And.intro E.conservationLawsClosed E.solutionExistenceClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse