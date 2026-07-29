import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure WaterResourceManagementPackage where
  stormwaterManagement : Prop
  waterEfficiency : Prop
  wastewaterTreatment : Prop
  floodResilience : Prop
  ecosystemProtection : Prop

structure WaterResourceManagementEvidence (W : WaterResourceManagementPackage) where
  stormwaterManagementClosed : W.stormwaterManagement
  waterEfficiencyClosed : W.waterEfficiency
  wastewaterTreatmentClosed : W.wastewaterTreatment
  floodResilienceClosed : W.floodResilience
  ecosystemProtectionClosed : W.ecosystemProtection

def WaterResourceManagementClosed (W : WaterResourceManagementPackage) : Prop :=
  W.stormwaterManagement ∧ W.waterEfficiency ∧ W.wastewaterTreatment ∧ W.floodResilience ∧ W.ecosystemProtection

theorem water_resource_management_closed_from_evidence (W : WaterResourceManagementPackage) (E : WaterResourceManagementEvidence W) :
    WaterResourceManagementClosed W := by
  exact And.intro E.stormwaterManagementClosed (And.intro E.waterEfficiencyClosed (And.intro E.wastewaterTreatmentClosed (And.intro E.floodResilienceClosed E.ecosystemProtectionClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
