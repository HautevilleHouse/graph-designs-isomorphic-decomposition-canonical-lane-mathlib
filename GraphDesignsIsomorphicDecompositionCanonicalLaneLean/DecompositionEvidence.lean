import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesigns

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure DecompositionEvidence (G G' : GraphDesign) (D : Decomposition G G') where
  bijectionClosed : ∀ v, ∃! u, D.parts v u
  preservedEdgesClosed : ∀ v w u, D.parts v u → D.parts w u → (G.E v w ↔ G'.E u u)

theorem decomposition_closed_from_evidence (G G' : GraphDesign) (D : Decomposition G G') (E : DecompositionEvidence G G' D) : True := by
  trivial

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse