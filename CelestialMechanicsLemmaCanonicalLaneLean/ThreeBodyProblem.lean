import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure ThreeBodyProblemPackage where
  massRatios : Prop
  initialConfigurations : Prop
  periodicOrbits : Prop
  stabilityRegion : Prop

structure ThreeBodyProblemEvidence (T : ThreeBodyProblemPackage) where
  massRatiosClosed : T.massRatios
  initialConfigurationsClosed : T.initialConfigurations
  periodicOrbitsClosed : T.periodicOrbits
  stabilityRegionClosed : T.stabilityRegion

def ThreeBodyProblemClosed (T : ThreeBodyProblemPackage) : Prop :=
  T.massRatios ∧ T.initialConfigurations ∧ T.periodicOrbits ∧ T.stabilityRegion

theorem three_body_problem_closed_from_evidence (T : ThreeBodyProblemPackage) (E : ThreeBodyProblemEvidence T) :
    ThreeBodyProblemClosed T := by
  exact And.intro E.massRatiosClosed
    (And.intro E.initialConfigurationsClosed
      (And.intro E.periodicOrbitsClosed E.stabilityRegionClosed))

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse