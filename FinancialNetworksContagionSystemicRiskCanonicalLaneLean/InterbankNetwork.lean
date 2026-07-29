import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure InterbankNetworkPackage {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} (D : DefaultCascadePackage S) where
  lendingObligations : Prop
  borrowingSchedules : Prop
  clearingVector : Prop
  interbankSettlement : Prop

structure InterbankNetworkEvidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    (I : InterbankNetworkPackage D) where
  lendingObligationsClosed : I.lendingObligations
  borrowingSchedulesClosed : I.borrowingSchedules
  clearingVectorClosed : I.clearingVector
  interbankSettlementClosed : I.interbankSettlement

def InterbankNetworkClosed {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    (I : InterbankNetworkPackage D) : Prop :=
  I.lendingObligations ∧ I.borrowingSchedules ∧ I.clearingVector ∧ I.interbankSettlement

theorem interbank_network_closed_from_evidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    (I : InterbankNetworkPackage D) (E : InterbankNetworkEvidence I) :
    InterbankNetworkClosed I := by
  exact And.intro E.lendingObligationsClosed
    (And.intro E.borrowingSchedulesClosed (And.intro E.clearingVectorClosed E.interbankSettlementClosed))

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse