import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure DefaultCascadePackage {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    (S : SystemicRiskMeasuresPackage C) where
  cascadeDepth : Prop
  defaultCount : Prop
  contagionProbability : Prop
  cascadeStability : Prop

structure DefaultCascadeEvidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} (D : DefaultCascadePackage S) where
  cascadeDepthClosed : D.cascadeDepth
  defaultCountClosed : D.defaultCount
  contagionProbabilityClosed : D.contagionProbability
  cascadeStabilityClosed : D.cascadeStability

def DefaultCascadeClosed {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} (D : DefaultCascadePackage S) : Prop :=
  D.cascadeDepth ∧ D.defaultCount ∧ D.contagionProbability ∧ D.cascadeStability

theorem default_cascade_closed_from_evidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} (D : DefaultCascadePackage S) (E : DefaultCascadeEvidence D) :
    DefaultCascadeClosed D := by
  exact And.intro E.cascadeDepthClosed
    (And.intro E.defaultCountClosed (And.intro E.contagionProbabilityClosed E.cascadeStabilityClosed))

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse