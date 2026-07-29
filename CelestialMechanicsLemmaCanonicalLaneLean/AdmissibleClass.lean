import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsLemmaCanonicalLaneLean

structure CelestialAdmittedObject where
  system : Type
  integrationDomain : Prop
  potentialDefined : Prop
  symmetryReduction : Prop
  perturbationBound : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : CelestialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CelestialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CelestialWitnessClosed (O : CelestialAdmittedObject) : Prop :=
  O.conclusion

end CelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse