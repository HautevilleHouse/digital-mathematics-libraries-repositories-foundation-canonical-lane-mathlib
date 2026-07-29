import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure RepositoryMetadataPackage where
  repoName : String
  repoOwner : String
  sourceControl : String
  primaryLanguage : String
  licenseType : String
  description : String

def RepositoryMetadataClosed (R : RepositoryMetadataPackage) : Prop :=
  R.repoName ≠ "" ∧ R.repoOwner ≠ "" ∧ R.sourceControl ≠ "" ∧ R.primaryLanguage ≠ ""

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
