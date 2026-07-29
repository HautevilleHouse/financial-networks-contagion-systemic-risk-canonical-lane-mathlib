import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FinancialNetworksContagionSystemicRiskCanonicalLaneLean.SystemicRiskMeasure

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure RegulatoryPolicyResponsePackage {N : NetworkTopologyPackage}
    {C : ContagionDynamicsPackage N} {R : SystemicRiskMeasurePackage C} where
  capitalRequirement : ℝ
  liquidityBuffer : ℝ
  stressTestPass : Prop
  capitalRequirementAdequate : capitalRequirement > 0
  liquidityBufferAdequate : liquidityBuffer > 0
  stressTestPassTerm : stressTestPass

structure RegulatoryPolicyResponseEvidence {N : NetworkTopologyPackage}
    {C : ContagionDynamicsPackage N} {R : SystemicRiskMeasurePackage C}
    (P : RegulatoryPolicyResponsePackage R) where
  capitalRequirementClosed : P.capitalRequirement > 0
  liquidityBufferClosed : P.liquidityBuffer > 0
  stressTestPassClosed : P.stressTestPass

def RegulatoryPolicyResponseClosed {N : NetworkTopologyPackage}
    {C : ContagionDynamicsPackage N} {R : SystemicRiskMeasurePackage C}
    (P : RegulatoryPolicyResponsePackage R) : Prop :=
  P.capitalRequirement > 0 ∧ P.liquidityBuffer > 0 ∧ P.stressTestPass

theorem regulatory_policy_response_closed_from_evidence
    {N : NetworkTopologyPackage} {C : ContagionDynamicsPackage N}
    {R : SystemicRiskMeasurePackage C} (P : RegulatoryPolicyResponsePackage R)
    (E : RegulatoryPolicyResponseEvidence P) : RegulatoryPolicyResponseClosed P := by
  exact And.intro E.capitalRequirementClosed
    (And.intro E.liquidityBufferClosed E.stressTestPassClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse