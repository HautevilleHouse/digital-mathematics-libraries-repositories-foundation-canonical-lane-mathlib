import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure DigitalObjectIdentifierPackage where
  doi : String
  url : String
  registered : Prop
  resolvable : Prop

def DigitalObjectIdentifierClosed (D : DigitalObjectIdentifierPackage) : Prop :=
  D.registered ∧ D.resolvable

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
