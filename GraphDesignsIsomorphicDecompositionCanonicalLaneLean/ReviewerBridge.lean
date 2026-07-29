import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.Formalization

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
  deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
  deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
  deriving Repr, DecidableEq

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse