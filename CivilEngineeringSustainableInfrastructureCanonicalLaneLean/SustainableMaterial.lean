import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure SustainableMaterialPackage where
  recycledContent : Prop
  localSourcing : Prop
  lowEmbodiedCarbon : Prop
  durability : Prop
  recyclability : Prop

structure SustainableMaterialEvidence (M : SustainableMaterialPackage) where
  recycledContentClosed : M.recycledContent
  localSourcingClosed : M.localSourcing
  lowEmbodiedCarbonClosed : M.lowEmbodiedCarbon
  durabilityClosed : M.durability
  recyclabilityClosed : M.recyclability

def SustainableMaterialClosed (M : SustainableMaterialPackage) : Prop :=
  M.recycledContent ∧ M.localSourcing ∧ M.lowEmbodiedCarbon ∧ M.durability ∧ M.recyclability

theorem sustainable_material_closed_from_evidence (M : SustainableMaterialPackage) (E : SustainableMaterialEvidence M) :
    SustainableMaterialClosed M := by
  exact And.intro E.recycledContentClosed (And.intro E.localSourcingClosed (And.intro E.lowEmbodiedCarbonClosed (And.intro E.durabilityClosed E.recyclabilityClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
