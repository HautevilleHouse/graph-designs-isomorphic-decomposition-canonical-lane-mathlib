import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

def ConstrainedGraphDesignClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_design_endgame (A : AdmissibleClass) :
    ConstrainedGraphDesignClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse