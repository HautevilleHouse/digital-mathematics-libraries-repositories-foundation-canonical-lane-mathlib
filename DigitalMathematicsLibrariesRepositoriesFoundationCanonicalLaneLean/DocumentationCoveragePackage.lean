import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure DocumentationCoveragePackage where
  readmeExists : Prop
  licenseFileExists : Prop
  contributingGuideExists : Prop
  codeOfConductExists : Prop
  changelogExists : Prop

def DocumentationCoverageClosed (D : DocumentationCoveragePackage) : Prop :=
  D.readmeExists ∧ D.licenseFileExists ∧ D.contributingGuideExists ∧ D.codeOfConductExists

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
