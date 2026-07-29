import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure VersionControlMetadataPackage where
  commitHash : String
  branchName : String
  tagName : Option String
  commitMessage : String

def VersionControlMetadataClosed (V : VersionControlMetadataPackage) : Prop :=
  V.commitHash ≠ "" ∧ V.branchName ≠ ""

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
