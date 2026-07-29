import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure GreenBuildingRatingPackage where
  energyEfficiency : Prop
  waterConservation : Prop
  indoorEnvironmentalQuality : Prop
  siteSustainability : Prop
  innovation : Prop

structure GreenBuildingRatingEvidence (G : GreenBuildingRatingPackage) where
  energyEfficiencyClosed : G.energyEfficiency
  waterConservationClosed : G.waterConservation
  indoorEnvironmentalQualityClosed : G.indoorEnvironmentalQuality
  siteSustainabilityClosed : G.siteSustainability
  innovationClosed : G.innovation

def GreenBuildingRatingClosed (G : GreenBuildingRatingPackage) : Prop :=
  G.energyEfficiency ∧ G.waterConservation ∧ G.indoorEnvironmentalQuality ∧ G.siteSustainability ∧ G.innovation

theorem green_building_rating_closed_from_evidence (G : GreenBuildingRatingPackage) (E : GreenBuildingRatingEvidence G) :
    GreenBuildingRatingClosed G := by
  exact And.intro E.energyEfficiencyClosed (And.intro E.waterConservationClosed (And.intro E.indoorEnvironmentalQualityClosed (And.intro E.siteSustainabilityClosed E.innovationClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
