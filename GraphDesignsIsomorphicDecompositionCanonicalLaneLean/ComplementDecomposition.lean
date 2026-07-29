import canonicalLaneMathlib.AdmissibleClass
import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphDesigns

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

def complement (G : GraphDesign) : GraphDesign :=
  { V := G.V
    E := λ u v => ¬ G.E u v ∧ u ≠ v
    finiteV := G.finiteV
    symmetric := by
      intro u v h; rcases h with ⟨hne, hneq⟩; exact ⟨by intro h'; apply hne; apply h'.symm, by intro h'; exact hneq (h'.symm)⟩
    irreflexive := by
      intro u h; exact h.2 rfl
  }

theorem complement_involution (G : GraphDesign) : complement (complement G) = G := by
  ext V u v; simp [complement]

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse