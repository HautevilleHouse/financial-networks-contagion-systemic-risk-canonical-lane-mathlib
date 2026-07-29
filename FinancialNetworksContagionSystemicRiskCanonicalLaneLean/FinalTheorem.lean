import FinancialNetworksContagionSystemicRiskCanonicalLaneLean.BridgeLemmas
import FinancialNetworksContagionSystemicRiskCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

def ConstrainedSystemicRiskClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_systemic_risk_endgame (A : AdmissibleClass) :
    ConstrainedSystemicRiskClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse
