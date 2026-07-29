import GraphDesignsIsomorphicDecompositionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphDesignsIsomorphicDecompositionCanonicalLaneLean

structure AdmissibleClass where
  object : GraphDesignAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DesignWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphDesignsIsomorphicDecompositionCanonicalLaneLean
end HautevilleHouse