import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure DependencyManagementPackage where
  dependencyFile : String
  packageManager : String
  dependenciesListed : Prop
  vulnerabilityScanned : Prop
  lockFilePresent : Prop

def DependencyManagementClosed (D : DependencyManagementPackage) : Prop :=
  D.dependenciesListed ∧ D.vulnerabilityScanned ∧ D.lockFilePresent

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
