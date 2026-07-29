import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean.DigitalRepositoryLayersBridge

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
  gateClosed A := by
  exact A.gateWitness

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse