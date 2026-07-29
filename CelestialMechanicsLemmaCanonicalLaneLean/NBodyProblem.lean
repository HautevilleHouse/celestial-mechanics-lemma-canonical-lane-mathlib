import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure NBodyPackage where
  n : Nat
  masses : Array ℚ
  positions : Type u → Type u
  momenta : Type u → Type u
  potentialFunction : Prop
  equationsOfMotion : Prop

structure NBodyEvidence (p : NBodyPackage) where
  potentialFunctionClosed : p.potentialFunction
  equationsOfMotionClosed : p.equationsOfMotion

def NBodyClosed (p : NBodyPackage) : Prop :=
  p.potentialFunction ∧ p.equationsOfMotion

theorem nbody_closed_from_evidence (p : NBodyPackage) (e : NBodyEvidence p) : NBodyClosed p :=
  And.intro e.potentialFunctionClosed e.equationsOfMotionClosed

end HautevilleHouse
end CelestialMechanicsLemmaCanonicalLaneLean