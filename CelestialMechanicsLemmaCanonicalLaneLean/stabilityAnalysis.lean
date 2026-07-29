import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure StabilityAnalysisPackage (A : AdmissibleClass) where
  lyapunovStability : Prop
  orbitalPrecession : Prop
  perturbationBounds : Prop

structure StabilityAnalysisEvidence {A : AdmissibleClass} (S : StabilityAnalysisPackage A) where
  lyapunovStabilityClosed : S.lyapunovStability
  orbitalPrecessionClosed : S.orbitalPrecession
  perturbationBoundsClosed : S.perturbationBounds

def StabilityAnalysisClosed {A : AdmissibleClass} (S : StabilityAnalysisPackage A) : Prop :=
  S.lyapunovStability ∧ S.orbitalPrecession ∧ S.perturbationBounds

theorem stability_analysis_closed_from_evidence
    {A : AdmissibleClass} (S : StabilityAnalysisPackage A)
    (E : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro E.lyapunovStabilityClosed
    (And.intro E.orbitalPrecessionClosed E.perturbationBoundsClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse