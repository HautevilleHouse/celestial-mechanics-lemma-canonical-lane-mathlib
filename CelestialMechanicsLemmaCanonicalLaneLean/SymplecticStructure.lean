import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure SymplecticPackage where
  phaseSpace : Type u
  symplecticForm : Type u
  hamiltonianFunction : Prop
  poissonBracket : Prop

structure SymplecticEvidence (p : SymplecticPackage) where
  hamiltonianFunctionClosed : p.hamiltonianFunction
  poissonBracketClosed : p.poissonBracket

def SymplecticClosed (p : SymplecticPackage) : Prop :=
  p.hamiltonianFunction ∧ p.poissonBracket

theorem symplectic_closed_from_evidence (p : SymplecticPackage) (e : SymplecticEvidence p) : SymplecticClosed p :=
  And.intro e.hamiltonianFunctionClosed e.poissonBracketClosed

end HautevilleHouse
end CelestialMechanicsLemmaCanonicalLaneLean