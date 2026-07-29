import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure FinancialNetwork where
  institutions : Type u
  exposures : institutions → institutions → ℝ
  capitalBuffer : institutions → ℝ
  interconnections : Prop
  weightedExposures : Prop
  linearExposureSystem : Prop

structure FinancialNetworkEvidence (N : FinancialNetwork) where
  interconnectionsClosed : N.interconnections
  weightedExposuresClosed : N.weightedExposures
  linearExposureSystemClosed : N.linearExposureSystem

def FinancialNetworkClosed (N : FinancialNetwork) : Prop :=
  N.interconnections ∧ N.weightedExposures ∧ N.linearExposureSystem

theorem financial_network_closed_from_evidence (N : FinancialNetwork) (E : FinancialNetworkEvidence N) :
    FinancialNetworkClosed N := by
  exact And.intro E.interconnectionsClosed (And.intro E.weightedExposuresClosed E.linearExposureSystemClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse