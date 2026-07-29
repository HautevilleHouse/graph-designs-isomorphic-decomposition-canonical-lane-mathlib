import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
  deriving Repr, DecidableEq

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse