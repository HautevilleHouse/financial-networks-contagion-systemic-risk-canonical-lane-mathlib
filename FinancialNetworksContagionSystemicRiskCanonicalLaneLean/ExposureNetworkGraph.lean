import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure ExposureNetworkPackage where
  nodeSet : Type
  edgeSet : Type
  weightMatrix : Type
  connectivity : Prop
  connectivityTerm : connectivity

structure ExposureNetworkEvidence (G : ExposureNetworkPackage) where
  connectivityClosed : G.connectivity
  weightMatrixRegular : Prop
  weightMatrixRegularTerm : weightMatrixRegular

def ExposureNetworkClosed (G : ExposureNetworkPackage) : Prop :=
  G.connectivity

theorem exposure_network_closed_from_evidence (G : ExposureNetworkPackage) (E : ExposureNetworkEvidence G) :
    ExposureNetworkClosed G := by
  exact E.connectivityClosed

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse