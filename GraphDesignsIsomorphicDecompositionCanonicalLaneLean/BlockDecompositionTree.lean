import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphIsomorphismDecomposition

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure DecompositionTree {G : GraphDesign} (P : IsomorphismDecompositionPackage G) where
  rootBlock : Finset (G.vertices)
  childBlocks : List (Finset (G.vertices))
  decompositionProperty : childBlocks ≠ []
  rootBlockClosed : rootBlock ∈ P.blockDecomposition
  childBlocksClosed : ∀ b, b ∈ childBlocks → b ∈ P.blockDecomposition

def DecompositionTreeClosed {G : GraphDesign} {P : IsomorphismDecompositionPackage G} (T : DecompositionTree P) : Prop :=
  T.rootBlockClosed ∧ T.childBlocksClosed

theorem decomposition_tree_closed_default {G : GraphDesign} {P : IsomorphismDecompositionPackage G} (T : DecompositionTree P) : DecompositionTreeClosed T := by
  exact And.intro T.rootBlockClosed T.childBlocksClosed

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse