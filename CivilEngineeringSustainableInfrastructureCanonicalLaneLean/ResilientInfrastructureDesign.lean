import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure ResilientInfrastructurePackage where
  hazardResilience : Prop
  adaptiveCapacity : Prop
  redundancy : Prop
  recoveryTime : Prop

structure ResilientInfrastructureEvidence (R : ResilientInfrastructurePackage) where
  hazardResilienceClosed : R.hazardResilience
  adaptiveCapacityClosed : R.adaptiveCapacity
  redundancyClosed : R.redundancy
  recoveryTimeClosed : R.recoveryTime

def ResilientInfrastructureClosed (R : ResilientInfrastructurePackage) : Prop :=
  R.hazardResilience ∧ R.adaptiveCapacity ∧ R.redundancy ∧ R.recoveryTime

theorem resilient_infrastructure_closed_from_evidence (R : ResilientInfrastructurePackage)
    (E : ResilientInfrastructureEvidence R) : ResilientInfrastructureClosed R := by
  exact And.intro E.hazardResilienceClosed
    (And.intro E.adaptiveCapacityClosed
      (And.intro E.redundancyClosed E.recoveryTimeClosed))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse