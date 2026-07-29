import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure StructuralLoadBridge where
  deadLoad : ℝ
  liveLoad : ℝ
  loadCombination : ℝ
  capacityExceedsDemand : Prop
  serviceabilitySatisfied : Prop

structure LoadBridgeEvidence (B : StructuralLoadBridge) where
  capacityExceedsDemandClosed : B.capacityExceedsDemand
  serviceabilitySatisfiedClosed : B.serviceabilitySatisfied

def LoadBridgeClosed (B : StructuralLoadBridge) : Prop :=
  B.capacityExceedsDemand ∧ B.serviceabilitySatisfied

theorem load_bridge_closed_from_evidence (B : StructuralLoadBridge) (E : LoadBridgeEvidence B) :
    LoadBridgeClosed B := by
  exact And.intro E.capacityExceedsDemandClosed E.serviceabilitySatisfiedClosed

end CivilEngineeringSustainableInfrastructure
end HautevilleHouse