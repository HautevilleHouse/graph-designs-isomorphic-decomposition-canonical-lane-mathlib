import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesignObject

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure IsomorphicDecompositionPackage where
  sourceDesign : GraphDesign
  targetDesign : GraphDesign
  decompositionMapping : DecompositionMap
  isomorphismCertified : Prop
  decompositionComplete : Prop

structure IsomorphicDecompositionEvidence (P : IsomorphicDecompositionPackage) where
  isomorphismCertifiedClosed : P.isomorphismCertified
  decompositionCompleteClosed : P.decompositionComplete

def IsomorphicDecompositionClosed (P : IsomorphicDecompositionPackage) : Prop :=
  P.isomorphismCertified ∧ P.decompositionComplete

theorem isomorphic_decomposition_closed_from_evidence (P : IsomorphicDecompositionPackage) (E : IsomorphicDecompositionEvidence P) : IsomorphicDecompositionClosed P := by
  exact And.intro E.isomorphismCertifiedClosed E.decompositionCompleteClosed

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse