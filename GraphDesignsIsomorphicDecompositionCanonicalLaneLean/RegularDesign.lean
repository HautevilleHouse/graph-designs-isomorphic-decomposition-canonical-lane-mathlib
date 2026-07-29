import canonicalLaneMathlib.IsomorphicDecomposition

/-!
# Regular Design Package
-/

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure RegularDesignPackage {G : GraphFamily}
    (M : MatchingStructure G) where
  regularBlockDesign : Prop
  blockIntersectionNumber : Prop
  replicationNumber : Prop
  symmetricDesignCondition : Prop

structure RegularDesignEvidence {G : GraphFamily}
    {M : MatchingStructure G} (R : RegularDesignPackage M) where
  regularBlockDesignClosed : R.regularBlockDesign
  blockIntersectionNumberClosed : R.blockIntersectionNumber
  replicationNumberClosed : R.replicationNumber
  symmetricDesignConditionClosed : R.symmetricDesignCondition

def RegularDesignClosed {G : GraphFamily}
    {M : MatchingStructure G} (R : RegularDesignPackage M) : Prop :=
  R.regularBlockDesign ∧ R.blockIntersectionNumber ∧
  R.replicationNumber ∧ R.symmetricDesignCondition

theorem regular_design_closed_from_evidence
    {G : GraphFamily} {M : MatchingStructure G}
    (R : RegularDesignPackage M) (E : RegularDesignEvidence R) :
    RegularDesignClosed R := by
  exact And.intro E.regularBlockDesignClosed
    (And.intro E.blockIntersectionNumberClosed
      (And.intro E.replicationNumberClosed E.symmetricDesignConditionClosed))

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse
