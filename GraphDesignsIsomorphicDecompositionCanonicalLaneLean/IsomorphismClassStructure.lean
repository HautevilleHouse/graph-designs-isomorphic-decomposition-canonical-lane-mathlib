import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphIsomorphismDecomposition

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure IsomorphismClassEvidence {G : GraphDesign} (P : IsomorphismDecompositionPackage G) where
  classLabel : P.isomorphismClasses
  classGraphs : Finset (G.vertices) → Prop
  classProperty : classGraphs (Finset.univ : Finset (G.vertices))

def IsomorphismClassClosed {G : GraphDesign} {P : IsomorphismDecompositionPackage G} (E : IsomorphismClassEvidence P) : Prop :=
  E.classProperty

theorem isomorphism_class_closed_from_evidence {G : GraphDesign} {P : IsomorphismDecompositionPackage G} (E : IsomorphismClassEvidence P) : IsomorphismClassClosed E := by
  exact E.classProperty

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse