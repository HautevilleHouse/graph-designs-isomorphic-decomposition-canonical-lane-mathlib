import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure GraphDesignPackage where
  vertexSet : Type u
  edgeRelation : vertexSet → vertexSet → Prop
  designStructure : Prop
  decompositionStructure : Prop
  isomorphismCondition : Prop

structure GraphDesignEvidence (G : GraphDesignPackage) where
  vertexSetFinite : Fintype G.vertexSet
  edgeRelationDecidable : DecidableRel G.edgeRelation
  designStructureClosed : G.designStructure
  decompositionStructureClosed : G.decompositionStructure
  isomorphismConditionClosed : G.isomorphismCondition

def GraphDesignClosed (G : GraphDesignPackage) : Prop :=
  G.designStructure ∧ G.decompositionStructure ∧ G.isomorphismCondition

theorem graph_design_closed_from_evidence (G : GraphDesignPackage) (E : GraphDesignEvidence G) :
    GraphDesignClosed G := by
  exact And.intro E.designStructureClosed (And.intro E.decompositionStructureClosed E.isomorphismConditionClosed)

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse