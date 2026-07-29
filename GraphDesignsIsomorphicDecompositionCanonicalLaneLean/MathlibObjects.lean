import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GraphDesignSpace where
  carrier : Type
  vertexSet : Finset carrier
  edgeSet : Finset (carrier × carrier)

structure GraphDesignAdmittedObject where
  space : GraphDesignSpace
  designProperty : Prop
  decompositionProperty : Prop
  isomorphicTarget : Type
  targetStructure : Prop
  isomorphicToTarget : Prop
  conclusion : isomorphicToTarget

structure GraphDesignEndgameState where
  object : GraphDesignAdmittedObject

def DesignWitnessClosed (O : GraphDesignAdmittedObject) : Prop :=
  O.isomorphicToTarget

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse