import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure SystemicRiskGraph where
  nodes : Type
  edges : Type
  adjacency : edges -> edges -> Prop
  defaultNode : nodes

structure FinancialNetworkAdmittedObject where
  graph : SystemicRiskGraph
  initialShocks : Prop
  contagionRule : Prop
  defaultThreshold : Prop

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse
