import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure NetworkAdmittedObject where
  graph : Type
  nodes : List graph
  edges : List (graph × graph)
  adjacencyMatrix : Prop
  shocks : List ℕ
  contagionDynamics : Prop
  systemicRiskThreshold : ℝ
  conclusion : systemicRiskThreshold < 0.5

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse