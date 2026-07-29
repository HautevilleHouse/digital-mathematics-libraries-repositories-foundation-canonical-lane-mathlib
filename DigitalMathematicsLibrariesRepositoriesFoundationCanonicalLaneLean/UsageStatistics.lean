import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure UsageStatisticsPackage where
  downloads : Nat
  citations : Nat
  uniqueUsers : Nat
  metricsTracked : Prop

structure UsageStatisticsEvidence (U : UsageStatisticsPackage) where
  downloadsClosed : U.downloads ≥ 0
  citationsClosed : U.citations ≥ 0
  uniqueUsersClosed : U.uniqueUsers ≥ 0
  metricsTrackedClosed : U.metricsTracked

def UsageStatisticsClosed (U : UsageStatisticsPackage) : Prop :=
  U.downloads ≥ 0 ∧ U.citations ≥ 0 ∧ U.uniqueUsers ≥ 0 ∧ U.metricsTracked

theorem usage_statistics_closed_from_evidence (U : UsageStatisticsPackage) (E : UsageStatisticsEvidence U) : UsageStatisticsClosed U := by
  exact And.intro (And.intro E.downloadsClosed E.citationsClosed) (And.intro E.uniqueUsersClosed E.metricsTrackedClosed)

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse