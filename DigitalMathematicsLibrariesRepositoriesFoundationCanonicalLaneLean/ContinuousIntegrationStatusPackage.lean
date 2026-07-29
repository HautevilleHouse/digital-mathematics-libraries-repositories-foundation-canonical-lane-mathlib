import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure ContinuousIntegrationStatusPackage where
  ciSystem : String
  lastBuildPassed : Prop
  testCoveragePercent : Float
  staticAnalysisPassed : Prop

def ContinuousIntegrationStatusClosed (C : ContinuousIntegrationStatusPackage) : Prop :=
  C.lastBuildPassed ∧ C.staticAnalysisPassed

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
