import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure NBodyAdmittedObject where
  masses : List ℝ
  positions : List ℕ → Vector ℝ 3
  initialConditionsSatisfied : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : NBodyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NBodyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse