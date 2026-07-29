import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure ContagionDynamicsPackage (N : FinancialNetwork) where
  defaultPropagation : Prop
  cascadeMechanism : Prop
  contagionThreshold : Prop
  lossGivenDefault : Prop

structure ContagionDynamicsEvidence {N : FinancialNetwork} (C : ContagionDynamicsPackage N) where
  defaultPropagationClosed : C.defaultPropagation
  cascadeMechanismClosed : C.cascadeMechanism
  contagionThresholdClosed : C.contagionThreshold
  lossGivenDefaultClosed : C.lossGivenDefault

def ContagionDynamicsClosed {N : FinancialNetwork} (C : ContagionDynamicsPackage N) : Prop :=
  C.defaultPropagation ∧ C.cascadeMechanism ∧ C.contagionThreshold ∧ C.lossGivenDefault

theorem contagion_dynamics_closed_from_evidence {N : FinancialNetwork} (C : ContagionDynamicsPackage N)
    (E : ContagionDynamicsEvidence C) : ContagionDynamicsClosed C := by
  exact And.intro E.defaultPropagationClosed
    (And.intro E.cascadeMechanismClosed (And.intro E.contagionThresholdClosed E.lossGivenDefaultClosed))

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse