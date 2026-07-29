import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure ContagionThresholdPackage where
  thresholdValue : ℝ
  infectionRate : ℝ
  recoveryRate : ℝ
  epidemicThreshold : Prop

structure ContagionThresholdEvidence (C : ContagionThresholdPackage) where
  thresholdValueClosed : C.thresholdValue > 0
  infectionRateClosed : C.infectionRate > 0
  recoveryRateClosed : C.recoveryRate > 0
  epidemicThresholdClosed : C.epidemicThreshold

def ContagionThresholdClosed (C : ContagionThresholdPackage) : Prop :=
  C.epidemicThreshold

theorem contagion_threshold_closed_from_evidence (C : ContagionThresholdPackage) (E : ContagionThresholdEvidence C) :
    ContagionThresholdClosed C := by
  exact E.epidemicThresholdClosed

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse
