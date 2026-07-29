import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DesignWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse