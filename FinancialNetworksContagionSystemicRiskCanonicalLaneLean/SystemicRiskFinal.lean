import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

def ConstrainedFinancialNetworksClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_financial_networks_endgame (A : AdmissibleClass) :
    ConstrainedFinancialNetworksClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse