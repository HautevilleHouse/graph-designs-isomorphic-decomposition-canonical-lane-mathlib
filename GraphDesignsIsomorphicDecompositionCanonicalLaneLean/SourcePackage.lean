import Mathlib

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
  deriving Repr, DecidableEq

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse