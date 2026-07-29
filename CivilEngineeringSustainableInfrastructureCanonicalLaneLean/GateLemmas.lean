import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
