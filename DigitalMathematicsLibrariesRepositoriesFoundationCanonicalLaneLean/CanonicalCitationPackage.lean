import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure CanonicalCitationPackage where
  doi : String
  title : String
  authors : List String
  year : Nat
  journal : String

def CanonicalCitationClosed (C : CanonicalCitationPackage) : Prop :=
  C.doi ≠ "" ∧ C.title ≠ "" ∧ C.authors.length > 0 ∧ C.year > 0

end HautevilleHouse
end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
