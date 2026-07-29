import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure FinancialNetwork where
  nodes : Type u
  edges : nodes → nodes → Prop
  liabilityMatrix : nodes → nodes → ℝ
  capitalBuffer : nodes → ℝ
  defaultThreshold : nodes → ℝ
  networkTopology : Prop
  interbankExposures : Prop

structure SystemicRiskPackage (N : FinancialNetwork) where
  contagionDynamics : Prop
  defaultCascade : Prop
  systemicEventDefinition : Prop
  shockPropagation : Prop
  vulnerabilityIndicators : Prop
  systemicRiskMeasures : Prop

structure SystemicRiskEvidence {N : FinancialNetwork} (S : SystemicRiskPackage N) where
  contagionDynamicsClosed : S.contagionDynamics
  defaultCascadeClosed : S.defaultCascade
  systemicEventDefinitionClosed : S.systemicEventDefinition
  shockPropagationClosed : S.shockPropagation
  vulnerabilityIndicatorsClosed : S.vulnerabilityIndicators
  systemicRiskMeasuresClosed : S.systemicRiskMeasures

def SystemicRiskClosed {N : FinancialNetwork} (S : SystemicRiskPackage N) : Prop :=
  S.contagionDynamics ∧ S.defaultCascade ∧ S.systemicEventDefinition ∧
  S.shockPropagation ∧ S.vulnerabilityIndicators ∧ S.systemicRiskMeasures

theorem systemic_risk_closed_from_evidence {N : FinancialNetwork}
    (S : SystemicRiskPackage N) (E : SystemicRiskEvidence S) : SystemicRiskClosed S := by
  exact And.intro E.contagionDynamicsClosed
    (And.intro E.defaultCascadeClosed
      (And.intro E.systemicEventDefinitionClosed
        (And.intro E.shockPropagationClosed
          (And.intro E.vulnerabilityIndicatorsClosed E.systemicRiskMeasuresClosed))))

structure NetworkContagionObject where
  network : FinancialNetwork
  shockScenario : Prop
  contagionThresholdCrossed : Prop
  systemicEventObserved : Prop
  conclusion : systemicEventObserved

structure AdmissibleClass where
  object : NetworkContagionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse
