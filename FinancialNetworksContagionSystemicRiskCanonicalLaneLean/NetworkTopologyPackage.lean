import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FinancialNetworksContagionSystemicRiskCanonicalLaneLean

structure NetworkTopologyPackage where
  nodes : Type u
  edges : Type v
  adjacencyMatrix : Type w
  spectralRadius : ℝ
  smallWorld : Prop
  percolationThreshold : ℝ
  graphSpectrumCondition : Prop
  smallWorldTerm : smallWorld
  graphSpectrumConditionTerm : graphSpectrumCondition

structure NetworkTopologyEvidence (N : NetworkTopologyPackage) where
  smallWorldClosed : N.smallWorld
  graphSpectrumConditionClosed : N.graphSpectrumCondition

def NetworkTopologyClosed (N : NetworkTopologyPackage) : Prop :=
  N.smallWorld ∧ N.graphSpectrumCondition

theorem network_topology_closed_from_evidence (N : NetworkTopologyPackage)
    (E : NetworkTopologyEvidence N) : NetworkTopologyClosed N := by
  exact And.intro E.smallWorldClosed E.graphSpectrumConditionClosed

end FinancialNetworksContagionSystemicRiskCanonicalLaneLean
end HautevilleHouse