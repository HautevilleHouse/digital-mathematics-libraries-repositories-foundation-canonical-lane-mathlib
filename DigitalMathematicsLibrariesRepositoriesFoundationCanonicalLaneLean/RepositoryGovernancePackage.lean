import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure RepositoryGovernancePackage where
  codeReviewRequired : Prop
  branchProtectionEnabled : Prop
  issueTemplatesExist : Prop
  pullRequestTemplatesExist : Prop
  maintainersListed : Prop

def RepositoryGovernanceClosed (R : RepositoryGovernancePackage) : Prop :=
  R.codeReviewRequired ∧ R.branchProtectionEnabled ∧ R.issueTemplatesExist ∧ R.pullRequestTemplatesExist

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
