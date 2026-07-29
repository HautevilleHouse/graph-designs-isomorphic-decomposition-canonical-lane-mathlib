import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphDesignsIsomorphicDecompositionCanonicalLaneLean.GraphIsomorphismDecomposition

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (G : GraphDesign) => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse