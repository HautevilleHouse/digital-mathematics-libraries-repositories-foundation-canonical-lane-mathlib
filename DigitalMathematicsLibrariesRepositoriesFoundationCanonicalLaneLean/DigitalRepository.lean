import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

/-- A digital mathematics library repository structure. -/
structure DigitalRepositoryPackage where
  repositoryName : String
  commitHash : String
  license : String
  documentationAvailable : Prop
  bibtexEntry : Prop
  artifactIndex : Prop
  reproducibilityScript : Prop

structure DigitalRepositoryEvidence (R : DigitalRepositoryPackage) where
  documentationAvailableClosed : R.documentationAvailable
  bibtexEntryClosed : R.bibtexEntry
  artifactIndexClosed : R.artifactIndex
  reproducibilityScriptClosed : R.reproducibilityScript

def DigitalRepositoryClosed (R : DigitalRepositoryPackage) : Prop :=
  R.documentationAvailable ∧ R.bibtexEntry ∧ R.artifactIndex ∧ R.reproducibilityScript

theorem digital_repository_closed_from_evidence (R : DigitalRepositoryPackage)
    (E : DigitalRepositoryEvidence R) : DigitalRepositoryClosed R := by
  exact And.intro E.documentationAvailableClosed
    (And.intro E.bibtexEntryClosed (And.intro E.artifactIndexClosed E.reproducibilityScriptClosed))

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse