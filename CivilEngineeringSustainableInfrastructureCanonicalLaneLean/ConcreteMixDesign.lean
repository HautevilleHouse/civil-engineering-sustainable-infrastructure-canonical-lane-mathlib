import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure ConcreteMixDesign where
  waterCementRatio : ℝ
  aggregateContent : ℝ
  compressiveStrength : ℝ
  gradationSatisfied : Prop
  workabilityMet : Prop

structure ConcreteMixEvidence (M : ConcreteMixDesign) where
  gradationSatisfiedClosed : M.gradationSatisfied
  workabilityMetClosed : M.workabilityMet

def ConcreteMixClosed (M : ConcreteMixDesign) : Prop :=
  M.gradationSatisfied ∧ M.workabilityMet

theorem concrete_mix_closed_from_evidence (M : ConcreteMixDesign) (E : ConcreteMixEvidence M) :
    ConcreteMixClosed M := by
  exact And.intro E.gradationSatisfiedClosed E.workabilityMetClosed

end CivilEngineeringSustainableInfrastructure
end HautevilleHouse