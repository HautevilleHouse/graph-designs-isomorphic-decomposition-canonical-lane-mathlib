import canonicalLaneMathlib.AdmissibleClass

/-!
# Design Decomposition Package
-/

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure DesignDecompositionPackage {G : GraphFamily}
    {M : MatchingStructure G} {R : RegularDesignPackage G M}
    {T : TradeDesignPackage G M R} (D : DecompositionMethodPackage T) where
  pairwiseBalancedBlocks : Prop
  isomorphicBlockPartition : Prop
  resolvableBlockStructure : Prop
  blockDecompositionClosed : Prop

structure DesignDecompositionEvidence {G : GraphFamily}
    {M : MatchingStructure G} {R : RegularDesignPackage G M}
    {T : TradeDesignPackage G M R} {D : DecompositionMethodPackage T}
    (pkg : DesignDecompositionPackage D) where
  pairwiseBalancedBlocksClosed : pkg.pairwiseBalancedBlocks
  isomorphicBlockPartitionClosed : pkg.isomorphicBlockPartition
  resolvableBlockStructureClosed : pkg.resolvableBlockStructure
  blockDecompositionClosed : pkg.blockDecompositionClosed

def DesignDecompositionClosed {G : GraphFamily}
    {M : MatchingStructure G} {R : RegularDesignPackage G M}
    {T : TradeDesignPackage G M R} {D : DecompositionMethodPackage T}
    (pkg : DesignDecompositionPackage D) : Prop :=
  pkg.pairwiseBalancedBlocks ∧ pkg.isomorphicBlockPartition ∧
  pkg.resolvableBlockStructure ∧ pkg.blockDecompositionClosed

theorem design_decomposition_closed_from_evidence
    {G : GraphFamily} {M : MatchingStructure G} {R : RegularDesignPackage G M}
    {T : TradeDesignPackage G M R} {D : DecompositionMethodPackage T}
    (pkg : DesignDecompositionPackage D) (E : DesignDecompositionEvidence pkg) :
    DesignDecompositionClosed pkg := by
  exact And.intro E.pairwiseBalancedBlocksClosed
    (And.intro E.isomorphicBlockPartitionClosed
      (And.intro E.resolvableBlockStructureClosed E.blockDecompositionClosed))

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse
