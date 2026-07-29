import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

/-- Metadata schema for digital library objects. -/
structure MetadataSchemaPackage where
  schemaVersion : String
  fieldNames : List String
  requiredFields : List String
  validationRules : Prop
  crosswalkCompatibility : Prop

structure MetadataSchemaEvidence (M : MetadataSchemaPackage) where
  validationRulesClosed : M.validationRules
  crosswalkCompatibilityClosed : M.crosswalkCompatibility

def MetadataSchemaClosed (M : MetadataSchemaPackage) : Prop :=
  M.validationRules ∧ M.crosswalkCompatibility

theorem metadata_schema_closed_from_evidence (M : MetadataSchemaPackage)
    (E : MetadataSchemaEvidence M) : MetadataSchemaClosed M := by
  exact And.intro E.validationRulesClosed E.crosswalkCompatibilityClosed

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse