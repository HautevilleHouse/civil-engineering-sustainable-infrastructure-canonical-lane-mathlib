import CivilEngineeringSustainableInfrastructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringSustainableInfrastructureCanonicalLaneLean

structure TransportationSustainabilityPackage where
  multimodalConnectivity : Prop
  transitAccess : Prop
  pedestrianInfrastructure : Prop
  bicyclingFacilities : Prop
  emissionReduction : Prop

structure TransportationSustainabilityEvidence (T : TransportationSustainabilityPackage) where
  multimodalConnectivityClosed : T.multimodalConnectivity
  transitAccessClosed : T.transitAccess
  pedestrianInfrastructureClosed : T.pedestrianInfrastructure
  bicyclingFacilitiesClosed : T.bicyclingFacilities
  emissionReductionClosed : T.emissionReduction

def TransportationSustainabilityClosed (T : TransportationSustainabilityPackage) : Prop :=
  T.multimodalConnectivity ∧ T.transitAccess ∧ T.pedestrianInfrastructure ∧ T.bicyclingFacilities ∧ T.emissionReduction

theorem transportation_sustainability_closed_from_evidence (T : TransportationSustainabilityPackage) (E : TransportationSustainabilityEvidence T) :
    TransportationSustainabilityClosed T := by
  exact And.intro E.multimodalConnectivityClosed (And.intro E.transitAccessClosed (And.intro E.pedestrianInfrastructureClosed (And.intro E.bicyclingFacilitiesClosed E.emissionReductionClosed)))

end CivilEngineeringSustainableInfrastructureCanonicalLaneLean
end HautevilleHouse
