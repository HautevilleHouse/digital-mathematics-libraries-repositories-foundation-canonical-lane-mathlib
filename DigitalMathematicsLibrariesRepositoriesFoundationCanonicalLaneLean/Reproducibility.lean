import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

/-- Reproducibility package for digital library outputs. -/
structure ReproducibilityPackage where
  buildScriptAvailable : Prop
  dependencyPinned : Prop
  buildVerification : Prop
  outputChecksumMatch : Prop

structure ReproducibilityEvidence (R : ReproducibilityPackage) where
  buildScriptAvailableClosed : R.buildScriptAvailable
  dependencyPinnedClosed : R.dependencyPinned
  buildVerificationClosed : R.buildVerification
  outputChecksumMatchClosed : R.outputChecksumMatch

def ReproducibilityClosed (R : ReproducibilityPackage) : Prop :=
  R.buildScriptAvailable ∧ R.dependencyPinned ∧ R.buildVerification ∧ R.outputChecksumMatch

theorem reproducibility_closed_from_evidence (R : ReproducibilityPackage)
    (E : ReproducibilityEvidence R) : ReproducibilityClosed R := by
  exact And.intro E.buildScriptAvailableClosed
    (And.intro E.dependencyPinnedClosed (And.intro E.buildVerificationClosed E.outputChecksumMatchClosed))

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse