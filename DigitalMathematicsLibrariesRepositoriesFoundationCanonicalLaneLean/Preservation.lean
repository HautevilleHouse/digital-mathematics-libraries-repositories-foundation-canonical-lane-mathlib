import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure PreservationPackage where
  backupStrategy : Prop
  formatMigration : Prop
  fixityChecks : Prop
  accessContinuity : Prop

structure PreservationEvidence (P : PreservationPackage) where
  backupStrategyClosed : P.backupStrategy
  formatMigrationClosed : P.formatMigration
  fixityChecksClosed : P.fixityChecks
  accessContinuityClosed : P.accessContinuity

def PreservationClosed (P : PreservationPackage) : Prop :=
  P.backupStrategy ∧ P.formatMigration ∧ P.fixityChecks ∧ P.accessContinuity

theorem preservation_closed_from_evidence (P : PreservationPackage) (E : PreservationEvidence P) : PreservationClosed P := by
  exact And.intro E.backupStrategyClosed (And.intro E.formatMigrationClosed (And.intro E.fixityChecksClosed E.accessContinuityClosed))

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse