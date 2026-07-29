import canonicalLaneMathlib.AdmissibleClass
import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.BridgeLemmas
import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

def ConstrainedSustainableInfrastructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sustainable_infrastructure_endgame (A : AdmissibleClass) :
    ConstrainedSustainableInfrastructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse