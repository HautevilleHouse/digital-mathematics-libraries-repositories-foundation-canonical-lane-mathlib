import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

/-- Mathlib's available library substrate for digital mathematics libraries. -/
structure MathlibSubstratePackage where
  mathlibVersion : String
  coreImported : Bool
  dependencyGraphAvailable : Prop
  closureUnderAdmissibility : Prop

structure MathlibSubstrateEvidence (M : MathlibSubstratePackage) where
  coreImportedClosed : M.coreImported
  dependencyGraphAvailableClosed : M.dependencyGraphAvailable
  closureUnderAdmissibilityClosed : M.closureUnderAdmissibility

def MathlibSubstrateClosed (M : MathlibSubstratePackage) : Prop :=
  M.coreImported ∧ M.dependencyGraphAvailable ∧ M.closureUnderAdmissibility

theorem mathlib_substrate_closed_from_evidence (M : MathlibSubstratePackage)
    (E : MathlibSubstrateEvidence M) : MathlibSubstrateClosed M := by
  exact And.intro E.coreImportedClosed (And.intro E.dependencyGraphAvailableClosed E.closureUnderAdmissibilityClosed)

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse