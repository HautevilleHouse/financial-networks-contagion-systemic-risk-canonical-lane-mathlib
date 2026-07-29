import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure SystemicRiskPackage where
  riskMetric : Type
  lossGivenDefault : Prop
  probabilityDefault : Prop
  riskAggregation : Prop

structure SystemicRiskEvidence (S : SystemicRiskPackage) where
  lossGivenDefaultClosed : S.lossGivenDefault
  probabilityDefaultClosed : S.probabilityDefault
  riskAggregationClosed : S.riskAggregation

def SystemicRiskClosed (S : SystemicRiskPackage) : Prop :=
  S.lossGivenDefault ∧ S.probabilityDefault ∧ S.riskAggregation

theorem systemic_risk_closed_from_evidence (S : SystemicRiskPackage) (E : SystemicRiskEvidence S) :
    SystemicRiskClosed S := by
  exact And.intro E.lossGivenDefaultClosed (And.intro E.probabilityDefaultClosed E.riskAggregationClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse