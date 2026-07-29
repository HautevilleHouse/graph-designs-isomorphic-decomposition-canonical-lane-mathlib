import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure GraphDesign where
  vertices : Type u
  edges : vertices → vertices → Prop
  finite : Fintype vertices

structure IsomorphismDecompositionPackage (G : GraphDesign) where
  blockDecomposition : List (Finset (G.vertices))
  isomorphismClasses : Type v
  structurePreserving : BlockDecomposition → IsomorphismClasses → Prop
  blockDecompositionClosed : BlockDecomposition ≠ []
  isomorphismClassesClosed : Nonempty IsomorphismClasses
  structurePreservingClosed : structurePreserving blockDecomposition isomorphismClasses

def IsomorphismDecompositionClosed {G : GraphDesign} (P : IsomorphismDecompositionPackage G) : Prop :=
  P.blockDecompositionClosed ∧ P.isomorphismClassesClosed ∧ P.structurePreservingClosed

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse