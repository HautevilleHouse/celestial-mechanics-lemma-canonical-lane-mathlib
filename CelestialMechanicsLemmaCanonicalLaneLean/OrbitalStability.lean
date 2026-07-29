import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure OrbitalStabilityPackage where
  system : NBodyPackage
  stabilityCondition : Prop
  lyapunovFunction : Prop
  stabilityDomain : Prop

structure OrbitalStabilityEvidence (p : OrbitalStabilityPackage) where
  stabilityConditionClosed : p.stabilityCondition
  lyapunovFunctionClosed : p.lyapunovFunction
  stabilityDomainClosed : p.stabilityDomain

def OrbitalStabilityClosed (p : OrbitalStabilityPackage) : Prop :=
  p.stabilityCondition ∧ p.lyapunovFunction ∧ p.stabilityDomain

theorem orbital_stability_closed_from_evidence (p : OrbitalStabilityPackage) (e : OrbitalStabilityEvidence p) : OrbitalStabilityClosed p :=
  And.intro e.stabilityConditionClosed (And.intro e.lyapunovFunctionClosed e.stabilityDomainClosed)

end HautevilleHouse
end CelestialMechanicsLemmaCanonicalLaneLean