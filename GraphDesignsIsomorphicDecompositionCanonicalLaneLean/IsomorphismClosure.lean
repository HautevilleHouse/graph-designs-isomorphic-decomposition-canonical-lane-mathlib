import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesigns
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.DecompositionEvidence

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

def IsomorphismClosed (G G' : GraphDesign) : Prop :=
  ∃ (D : Decomposition G G'), DecompositionEvidence G G' D

theorem isomorphism_closed_iff (G G' : GraphDesign) : IsomorphismClosed G G' ↔ ∃ (D : Decomposition G G'), DecompositionEvidence G G' D := by
  rfl

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse