import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure InterbankContagionPackage where
  bankSet : Type
  interbankExposure : Type
  defaultPropagation : Prop
  capitalRequirement : Prop
  cascadeDepth : Prop

structure InterbankContagionEvidence (I : InterbankContagionPackage) where
  defaultPropagationClosed : I.defaultPropagation
  capitalRequirementClosed : I.capitalRequirement
  cascadeDepthClosed : I.cascadeDepth

def InterbankContagionClosed (I : InterbankContagionPackage) : Prop :=
  I.defaultPropagation ∧ I.capitalRequirement ∧ I.cascadeDepth

theorem interbank_contagion_closed_from_evidence (I : InterbankContagionPackage) (E : InterbankContagionEvidence I) :
    InterbankContagionClosed I := by
  exact And.intro E.defaultPropagationClosed (And.intro E.capitalRequirementClosed E.cascadeDepthClosed)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse