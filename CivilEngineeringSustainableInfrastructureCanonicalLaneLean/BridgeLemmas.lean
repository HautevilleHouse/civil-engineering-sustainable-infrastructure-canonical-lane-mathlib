import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SustainableInfrastructureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
