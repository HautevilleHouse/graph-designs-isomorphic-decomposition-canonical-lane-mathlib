import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.BlockDesignDecomposition

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure DecompositionTheoremPackage {G : GraphDesignObject} {B : BlockDesignPackage G} where
  decompositionExists : Prop
  decompositionUnique : Prop
  isomorphismPreserved : Prop
  decompositionExistsClosed : decompositionExists
  decompositionUniqueClosed : decompositionUnique
  isomorphismPreservedClosed : isomorphismPreserved

structure DecompositionTheoremEvidence {G : GraphDesignObject} {B : BlockDesignPackage G} (D : DecompositionTheoremPackage G B) where
  decompositionExistsClosed : D.decompositionExists
  decompositionUniqueClosed : D.decompositionUnique
  isomorphismPreservedClosed : D.isomorphismPreserved

def DecompositionTheoremClosed {G : GraphDesignObject} {B : BlockDesignPackage G} (D : DecompositionTheoremPackage G B) : Prop :=
  D.decompositionExists ∧ D.decompositionUnique ∧ D.isomorphismPreserved

theorem decomposition_theorem_closed_from_evidence {G : GraphDesignObject} {B : BlockDesignPackage G} (D : DecompositionTheoremPackage G B) (E : DecompositionTheoremEvidence D) : DecompositionTheoremClosed D := by
  exact And.intro E.decompositionExistsClosed (And.intro E.decompositionUniqueClosed E.isomorphismPreservedClosed)

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse