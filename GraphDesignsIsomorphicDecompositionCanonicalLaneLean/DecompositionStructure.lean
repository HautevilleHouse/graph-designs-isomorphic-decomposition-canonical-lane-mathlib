import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesignObject

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure DecompositionStructure where
  graph : GraphDesign
  partitions : List (List Nat)
  blockDesigns : List GraphDesign
  coverageCondition : Prop
  disjointnessCondition : Prop

structure DecompositionStructureEvidence (D : DecompositionStructure) where
  coverageConditionClosed : D.coverageCondition
  disjointnessConditionClosed : D.disjointnessCondition

def DecompositionStructureClosed (D : DecompositionStructure) : Prop :=
  D.coverageCondition ∧ D.disjointnessCondition

theorem decomposition_structure_closed_from_evidence (D : DecompositionStructure) (E : DecompositionStructureEvidence D) : DecompositionStructureClosed D := by
  exact And.intro E.coverageConditionClosed E.disjointnessConditionClosed

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse