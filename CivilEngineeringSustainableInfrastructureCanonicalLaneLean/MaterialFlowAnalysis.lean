import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure MaterialFlowAnalysisPackage where
  systemDefinition : Prop
  materialBalance : Prop
  flowQuantification : Prop
  efficiencyIndicators : Prop
  optimizationPotential : Prop

structure MaterialFlowAnalysisEvidence (M : MaterialFlowAnalysisPackage) where
  systemDefinitionClosed : M.systemDefinition
  materialBalanceClosed : M.materialBalance
  flowQuantificationClosed : M.flowQuantification
  efficiencyIndicatorsClosed : M.efficiencyIndicators
  optimizationPotentialClosed : M.optimizationPotential

def MaterialFlowAnalysisClosed (M : MaterialFlowAnalysisPackage) : Prop :=
  M.systemDefinition ∧ M.materialBalance ∧ M.flowQuantification ∧ M.efficiencyIndicators ∧ M.optimizationPotential

theorem material_flow_analysis_closed_from_evidence (M : MaterialFlowAnalysisPackage)
    (E : MaterialFlowAnalysisEvidence M) : MaterialFlowAnalysisClosed M := by
  exact And.intro E.systemDefinitionClosed
    (And.intro E.materialBalanceClosed
      (And.intro E.flowQuantificationClosed
        (And.intro E.efficiencyIndicatorsClosed E.optimizationPotentialClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse