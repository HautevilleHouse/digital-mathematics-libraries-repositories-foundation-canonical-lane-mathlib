import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

/-- Extraction of theorems from a digital library. -/
structure TheoremExtractionPackage where
  sourceRepository : String
  theoremIdentifiers : List String
  extractionMethod : String
  extractionVerified : Prop
  alignmentWithAdmissibleClass : Prop

structure TheoremExtractionEvidence (T : TheoremExtractionPackage) where
  extractionVerifiedClosed : T.extractionVerified
  alignmentWithAdmissibleClassClosed : T.alignmentWithAdmissibleClass

def TheoremExtractionClosed (T : TheoremExtractionPackage) : Prop :=
  T.extractionVerified ∧ T.alignmentWithAdmissibleClass

theorem theorem_extraction_closed_from_evidence (T : TheoremExtractionPackage)
    (E : TheoremExtractionEvidence T) : TheoremExtractionClosed T := by
  exact And.intro E.extractionVerifiedClosed E.alignmentWithAdmissibleClassClosed

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse