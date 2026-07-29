import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesignIsomorphicDecomposition

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure BlockDesignPackage (G : GraphDesignObject) where
  blockSet : Type w
  pointBlockIncidence : blockSet → G.vertexSet → Prop
  blockDesignAxioms : Prop
  decompositionCompatibility : G.isomorphicDecomposition → blockDesignAxioms

structure BlockDesignEvidence {G : GraphDesignObject} (B : BlockDesignPackage G) where
  blockDesignAxiomsClosed : B.blockDesignAxioms
  decompositionCompatibilityClosed : B.decompositionCompatibility (by
    exact G.decompositionClosed)

def BlockDesignClosed {G : GraphDesignObject} (B : BlockDesignPackage G) : Prop :=
  B.blockDesignAxioms

theorem block_design_closed_from_evidence {G : GraphDesignObject} (B : BlockDesignPackage G) (E : BlockDesignEvidence B) : BlockDesignClosed B := by
  exact E.blockDesignAxiomsClosed

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse