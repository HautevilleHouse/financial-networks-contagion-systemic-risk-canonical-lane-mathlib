import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure RegulatoryCapitalPackage {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    (I : InterbankNetworkPackage D) where
  capitalAdequacyRatio : Prop
  stressCapitalBuffer : Prop
  systemicRiskBuffer : Prop
  regulatoryCompliance : Prop

structure RegulatoryCapitalEvidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    {I : InterbankNetworkPackage D} (R : RegulatoryCapitalPackage I) where
  capitalAdequacyRatioClosed : R.capitalAdequacyRatio
  stressCapitalBufferClosed : R.stressCapitalBuffer
  systemicRiskBufferClosed : R.systemicRiskBuffer
  regulatoryComplianceClosed : R.regulatoryCompliance

def RegulatoryCapitalClosed {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    {I : InterbankNetworkPackage D} (R : RegulatoryCapitalPackage I) : Prop :=
  R.capitalAdequacyRatio ∧ R.stressCapitalBuffer ∧ R.systemicRiskBuffer ∧ R.regulatoryCompliance

theorem regulatory_capital_closed_from_evidence {N : FinancialNetwork} {C : ContagionDynamicsPackage N}
    {S : SystemicRiskMeasuresPackage C} {D : DefaultCascadePackage S}
    {I : InterbankNetworkPackage D} (R : RegulatoryCapitalPackage I)
    (E : RegulatoryCapitalEvidence R) : RegulatoryCapitalClosed R := by
  exact And.intro E.capitalAdequacyRatioClosed
    (And.intro E.stressCapitalBufferClosed (And.intro E.systemicRiskBufferClosed E.regulatoryComplianceClosed))

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse