import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure ContagionDynamicPackage where
  timeParameter : Type
  stateAt : timeParameter → Type
  dynamicEquation : Prop
  initialCondition : Prop
  boundaryBehavior : Prop

structure ContagionDynamicEvidence (C : ContagionDynamicPackage) where
  dynamicEquationClosed : C.dynamicEquation
  initialConditionClosed : C.initialCondition
  boundaryBehaviorClosed : C.boundaryBehavior

def ContagionDynamicClosed (C : ContagionDynamicPackage) : Prop :=
  C.dynamicEquation ∧ C.initialCondition ∧ C.boundaryBehavior

theorem contagion_dynamic_closed_from_evidence (C : ContagionDynamicPackage) (E : ContagionDynamicEvidence C) :
    ContagionDynamicClosed C := by
  exact And.intro E.dynamicEquationClosed (And.intro E.initialConditionClosed E.boundaryBehaviorClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse