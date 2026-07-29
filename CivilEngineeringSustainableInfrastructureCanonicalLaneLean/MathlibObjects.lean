import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure SustainableInfrastructureObject where
  designLifeCycleYears : ℕ
  co2ReductionPercent : ℝ
  costReductionPercent : ℝ
  hasCertification : Prop
  certificationBody : String
  conclusion : hasCertification

def SustainableInfrastructureWitnessClosed (O : SustainableInfrastructureObject) : Prop :=
  O.hasCertification

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
