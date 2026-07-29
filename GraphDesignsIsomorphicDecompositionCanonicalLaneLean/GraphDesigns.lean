import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure GraphDesign where
  V : Type
  E : V → V → Prop
  finiteV : Fintype V
  symmetric : Symmetric E
  irreflexive : Irreflexive E

structure Decomposition (G G' : GraphDesign) where
  parts : G.V → G'.V → Prop
  bijection : ∀ v, ∃! u, parts v u
  preservedEdges : ∀ v w u, parts v u → parts w u → (G.E v w ↔ G'.E u u)

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse