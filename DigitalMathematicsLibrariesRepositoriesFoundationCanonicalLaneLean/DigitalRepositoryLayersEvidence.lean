import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean.DigitalRepositoryLayers

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure RepositoryLayerCertificate (R : RepositoryLayerPackage) where
  contentLayerProof : RepositoryLayerEvidence.contentLayerClosed R
  metadataLayerProof : RepositoryLayerEvidence.metadataLayerClosed R
  identificationBridgeLayerProof : RepositoryLayerEvidence.identificationBridgeLayerClosed R
  closureGateLayerProof : RepositoryLayerEvidence.closureGateLayerClosed R

def repository_layer_certificate_valid {R : RepositoryLayerPackage}
    (C : RepositoryLayerCertificate R) : RepositoryLayerClosed R := by
  have h : RepositoryLayerClosed R := repository_layer_closed_from_evidence R
    ({
      contentLayerClosed := C.contentLayerProof
      metadataLayerClosed := C.metadataLayerProof
      identificationBridgeLayerClosed := C.identificationBridgeLayerProof
      closureGateLayerClosed := C.closureGateLayerProof
    } : RepositoryLayerEvidence R)
  exact h

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse