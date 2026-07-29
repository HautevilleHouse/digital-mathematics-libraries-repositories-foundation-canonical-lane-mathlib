import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure RepositoryCanonicalLaneCorePackage where
  laneType : String
  projectionLaw : Prop
  carriageLaw : Prop
  idempotenceLaw : Prop
  commuteCondition : Prop

structure RepositoryCanonicalLaneCoreEvidence (C : RepositoryCanonicalLaneCorePackage) where
  projectionLawClosed : C.projectionLaw
  carriageLawClosed : C.carriageLaw
  idempotenceLawClosed : C.idempotenceLaw
  commuteConditionClosed : C.commuteCondition

def RepositoryCanonicalLaneCoreClosed (C : RepositoryCanonicalLaneCorePackage) : Prop :=
  C.projectionLaw ∧ C.carriageLaw ∧ C.idempotenceLaw ∧ C.commuteCondition

theorem repository_canonical_lane_core_closed_from_evidence
    (C : RepositoryCanonicalLaneCorePackage) (E : RepositoryCanonicalLaneCoreEvidence C) :
    RepositoryCanonicalLaneCoreClosed C := by
  exact And.intro E.projectionLawClosed
    (And.intro E.carriageLawClosed
      (And.intro E.idempotenceLawClosed E.commuteConditionClosed))

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse