import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure DigitalRepository where
  carrier : Type
  objectType : Prop

structure LibraryAdmittedObject where
  repository : DigitalRepository
  metadataDocumented : Prop
  versionControlled : Prop
  peerReviewed : Prop
  conclusion : metadataDocumented ∧ versionControlled ∧ peerReviewed

structure LibraryEndgameState where
  object : LibraryAdmittedObject

def LibraryWitnessClosed (O : LibraryAdmittedObject) : Prop :=
  O.conclusion

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse