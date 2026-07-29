import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure MetadataExtractionPackage where
  bibtexEntry : Type
  dublinCoreField : Type
  subjectHeading : Type
  extractionScriptsVerified : Prop
  crosswalkConsistent : Prop

structure MetadataExtractionEvidence (M : MetadataExtractionPackage) where
  extractionScriptsVerifiedClosed : M.extractionScriptsVerified
  crosswalkConsistentClosed : M.crosswalkConsistent

def MetadataExtractionClosed (M : MetadataExtractionPackage) : Prop :=
  M.extractionScriptsVerified ∧ M.crosswalkConsistent

theorem metadata_extraction_closed_from_evidence
    (M : MetadataExtractionPackage) (E : MetadataExtractionEvidence M) :
    MetadataExtractionClosed M := by
  exact And.intro E.extractionScriptsVerifiedClosed E.crosswalkConsistentClosed

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse