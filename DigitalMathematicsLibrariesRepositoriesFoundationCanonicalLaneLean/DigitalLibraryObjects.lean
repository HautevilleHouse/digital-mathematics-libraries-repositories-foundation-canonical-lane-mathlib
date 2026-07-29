import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DigitalLibrarySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DigitalLibraryAdmittedObject where
  space : DigitalLibrarySpace
  repositoryFormalized : Prop
  metadataComplete : Prop
  citationModel : Type
  citationTopology : TopologicalSpace citationModel
  formalizedToCitation : Prop
  conclusion : formalizedToCitation

structure DigitalLibraryEndgameState where
  object : DigitalLibraryAdmittedObject

def DigitalLibraryWitnessClosed (O : DigitalLibraryAdmittedObject) : Prop :=
  O.formalizedToCitation

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse