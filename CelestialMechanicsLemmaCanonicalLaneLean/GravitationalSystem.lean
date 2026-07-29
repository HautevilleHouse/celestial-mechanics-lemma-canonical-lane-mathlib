import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure GravitationalSystemPackage where
  nBody : Type u
  masses : Type v
  positions : Type w
  potentialFunction : Type x
  smoothManifold : Prop
  gravitationalLaw : Prop
  potentialSmooth : Prop

structure GravitationalSystemEvidence (G : GravitationalSystemPackage) where
  smoothManifoldClosed : G.smoothManifold
  gravitationalLawClosed : G.gravitationalLaw
  potentialSmoothClosed : G.potentialSmooth

def GravitationalSystemClosed (G : GravitationalSystemPackage) : Prop :=
  G.smoothManifold ∧ G.gravitationalLaw ∧ G.potentialSmooth

theorem gravitational_system_closed_from_evidence
    (G : GravitationalSystemPackage) (E : GravitationalSystemEvidence G) :
    GravitationalSystemClosed G := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.gravitationalLawClosed E.potentialSmoothClosed)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse