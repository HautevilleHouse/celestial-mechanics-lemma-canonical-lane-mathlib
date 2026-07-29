import CelestialMechanicsLemmaCanonicalLaneLean.ThreeBodyProblem

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure CentralConfigurationPackage {A : AdmissibleClass} (T : ThreeBodyPackage A) where
  centralConfigurationExists : Prop
  stabilityConditions : Prop
  equilibriumPoints : Prop

structure CentralConfigurationEvidence {A : AdmissibleClass} {T : ThreeBodyPackage A}
    (C : CentralConfigurationPackage T) where
  centralConfigurationExistsClosed : C.centralConfigurationExists
  stabilityConditionsClosed : C.stabilityConditions
  equilibriumPointsClosed : C.equilibriumPoints

def CentralConfigurationClosed {A : AdmissibleClass} {T : ThreeBodyPackage A}
    (C : CentralConfigurationPackage T) : Prop :=
  C.centralConfigurationExists ∧ C.stabilityConditions ∧ C.equilibriumPoints

theorem central_configuration_closed_from_evidence {A : AdmissibleClass} {T : ThreeBodyPackage A}
    (C : CentralConfigurationPackage T) (E : CentralConfigurationEvidence C) :
    CentralConfigurationClosed C := by
  exact And.intro E.centralConfigurationExistsClosed
    (And.intro E.stabilityConditionsClosed E.equilibriumPointsClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse