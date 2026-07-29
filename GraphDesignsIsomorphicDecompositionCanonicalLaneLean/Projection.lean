import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def graphDesignProjection : Projection GraphDesignEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem graph_design_projection_idempotent (x : GraphDesignEndgameState) :
    graphDesignProjection.toFun (graphDesignProjection.toFun x) = graphDesignProjection.toFun x := by
  exact graphDesignProjection.idempotent x

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse