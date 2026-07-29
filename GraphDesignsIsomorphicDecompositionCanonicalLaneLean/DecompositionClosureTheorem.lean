import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesigns
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.IsomorphismClosure

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

theorem decomposition_closure_refl (G : GraphDesign) : IsomorphismClosed G G := by
  let D : Decomposition G G := {
    parts := λ v u => v = u
    bijection := λ v => ⟨v, rfl, λ u h => h⟩
    preservedEdges := λ v w u h h' => by
      subst h; subst h'; rfl
  }
  refine ⟨D, ?_⟩
  exact {
    bijectionClosed := D.bijection
    preservedEdgesClosed := D.preservedEdges
  }

theorem decomposition_closure_symm (G H : GraphDesign) (h : IsomorphismClosed G H) : IsomorphismClosed H G := by
  rcases h with ⟨D, ⟨b, p⟩⟩
  let D' : Decomposition H G := {
    parts := λ u v => D.parts v u
    bijection := λ u => ?_
    preservedEdges := λ u v w h1 h2 => ?_
  }
  · exact ?_
  · exact ?_

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse