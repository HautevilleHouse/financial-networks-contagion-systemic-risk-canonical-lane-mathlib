import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure SystemicRiskMeasuresPackage {N : FinancialNetwork} {C : ContagionDynamicsPackage N} where
  expectedShortfall : Prop
  valueAtRisk : Prop
  systemicRiskIndex : Prop
  stressTestScenario : Prop

structure SystemicRiskMeasuresEvidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    (S : SystemicRiskMeasuresPackage C) where
  expectedShortfallClosed : S.expectedShortfall
  valueAtRiskClosed : S.valueAtRisk
  systemicRiskIndexClosed : S.systemicRiskIndex
  stressTestScenarioClosed : S.stressTestScenario

def SystemicRiskMeasuresClosed {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    (S : SystemicRiskMeasuresPackage C) : Prop :=
  S.expectedShortfall ∧ S.valueAtRisk ∧ S.systemicRiskIndex ∧ S.stressTestScenario

theorem systemic_risk_measures_closed_from_evidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    (S : SystemicRiskMeasuresPackage C) (E : SystemicRiskMeasuresEvidence S) :
    SystemicRiskMeasuresClosed S := by
  exact And.intro E.expectedShortfallClosed
    (And.intro E.valueAtRiskClosed (And.intro E.systemicRiskIndexClosed E.stressTestScenarioClosed))

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse