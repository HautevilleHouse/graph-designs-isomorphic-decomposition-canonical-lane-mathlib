import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure GraphDesign where
  vertices : Nat
  edges : Nat
  adjacencyMatrix : List (List Nat)
  designRank : Prop

structure DecompositionMap where
  source : GraphDesign
  target : GraphDesign
  mapping : Prop
  isomorphismProof : mapping → source.vertices = target.vertices ∧ source.edges = target.edges

structure GraphDesignAdmittedObject where
  design : GraphDesign
  isomorphicDecompositionExists : Prop
  conclusion : isomorphicDecompositionExists
  designRankNonzero : design.designRank

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse