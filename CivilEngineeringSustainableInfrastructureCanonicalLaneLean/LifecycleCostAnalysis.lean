import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure LifecycleCostPackage where
  initialCost : Prop
  maintenanceCost : Prop
  operationCost : Prop
  endOfLifeCost : Prop
  discountRate : Prop

structure LifecycleCostEvidence (L : LifecycleCostPackage) where
  initialCostClosed : L.initialCost
  maintenanceCostClosed : L.maintenanceCost
  operationCostClosed : L.operationCost
  endOfLifeCostClosed : L.endOfLifeCost
  discountRateClosed : L.discountRate

def LifecycleCostClosed (L : LifecycleCostPackage) : Prop :=
  L.initialCost ∧ L.maintenanceCost ∧ L.operationCost ∧ L.endOfLifeCost ∧ L.discountRate

theorem lifecycle_cost_closed_from_evidence (L : LifecycleCostPackage)
    (E : LifecycleCostEvidence L) : LifecycleCostClosed L := by
  exact And.intro E.initialCostClosed
    (And.intro E.maintenanceCostClosed
      (And.intro E.operationCostClosed
        (And.intro E.endOfLifeCostClosed E.discountRateClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse