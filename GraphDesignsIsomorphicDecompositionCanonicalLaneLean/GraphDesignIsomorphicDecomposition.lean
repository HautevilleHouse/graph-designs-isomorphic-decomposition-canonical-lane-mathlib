import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure GraphDesignObject where
  vertexSet : Type u
  edgeSet : Type v
  incidence : edgeSet → vertexSet × vertexSet
  designStructure : Prop
  isomorphicDecomposition : Prop
  decompositionClosed : isomorphicDecomposition

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse