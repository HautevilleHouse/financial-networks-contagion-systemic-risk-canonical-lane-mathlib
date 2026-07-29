import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure FinancialNetworkObject where
  networkType : Type
  adjacencyStructure : Prop
  exposureMatrix : Type
  contagionDynamics : Prop
  conclusion : contagionDynamics

structure AdmissibleClass where
  object : FinancialNetworkObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse