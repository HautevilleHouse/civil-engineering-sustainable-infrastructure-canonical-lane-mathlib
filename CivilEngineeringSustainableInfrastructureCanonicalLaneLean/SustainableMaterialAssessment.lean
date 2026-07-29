import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure SustainableMaterialPackage where
  materialType : Type u
  environmentalImpact : Prop
  mechanicalPerformance : Prop
  lifecycleAssessment : Prop
  recyclability : Prop

structure SustainableMaterialEvidence (M : SustainableMaterialPackage) where
  environmentalImpactClosed : M.environmentalImpact
  mechanicalPerformanceClosed : M.mechanicalPerformance
  lifecycleAssessmentClosed : M.lifecycleAssessment
  recyclabilityClosed : M.recyclability

def SustainableMaterialClosed (M : SustainableMaterialPackage) : Prop :=
  M.environmentalImpact ∧ M.mechanicalPerformance ∧ M.lifecycleAssessment ∧ M.recyclability

theorem sustainable_material_closed_from_evidence (M : SustainableMaterialPackage)
    (E : SustainableMaterialEvidence M) : SustainableMaterialClosed M := by
  exact And.intro E.environmentalImpactClosed
    (And.intro E.mechanicalPerformanceClosed
      (And.intro E.lifecycleAssessmentClosed E.recyclabilityClosed))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse