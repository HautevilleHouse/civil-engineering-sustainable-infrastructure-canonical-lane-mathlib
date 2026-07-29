import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure AdmissibleClass where
  object : SustainableInfrastructureObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SustainableInfrastructureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
