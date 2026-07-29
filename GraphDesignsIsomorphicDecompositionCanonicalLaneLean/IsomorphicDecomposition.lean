import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphIsomorphism

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure IsomorphicDecompositionPackage {G : GraphDesignPackage} (H : GraphDesignPackage) where
  decompositionMap : G.vertexSet → H.vertexSet
  bijectionCondition : Function.Bijective decompositionMap
  edgePreservation : ∀ u v, G.edgeRelation u v ↔ H.edgeRelation (decompositionMap u) (decompositionMap v)
  designPreservation : Prop
  decompositionPreservation : Prop

structure IsomorphicDecompositionEvidence {G : GraphDesignPackage} {H : GraphDesignPackage}
    (I : IsomorphicDecompositionPackage H) where
  bijectionConditionClosed : I.bijectionCondition
  edgePreservationClosed : I.edgePreservation
  designPreservationClosed : I.designPreservation
  decompositionPreservationClosed : I.decompositionPreservation

def IsomorphicDecompositionClosed {G : GraphDesignPackage} {H : GraphDesignPackage}
    (I : IsomorphicDecompositionPackage H) : Prop :=
  I.bijectionCondition ∧ I.edgePreservation ∧ I.designPreservation ∧ I.decompositionPreservation

theorem isomorphic_decomposition_closed_from_evidence
    {G : GraphDesignPackage} {H : GraphDesignPackage} (I : IsomorphicDecompositionPackage H)
    (E : IsomorphicDecompositionEvidence I) : IsomorphicDecompositionClosed I := by
  exact And.intro E.bijectionConditionClosed (And.intro E.edgePreservationClosed
    (And.intro E.designPreservationClosed E.decompositionPreservationClosed))

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse