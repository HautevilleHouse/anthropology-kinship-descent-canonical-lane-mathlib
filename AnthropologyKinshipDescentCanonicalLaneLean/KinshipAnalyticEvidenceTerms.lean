import HautevilleHouse.AnthropologyKinshipDescentCanonicalLaneLean.KinshipAnalyticProof

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure DescentTheoryAnalyticEvidenceTerms (D : DescentTheoryAnalyticCertificate) where
  unilinealEvidence : D.unilinealEvidence
  cognaticEvidence : D.cognaticEvidence
  bilateralEvidence : D.bilateralEvidence
  consistencyProof : D.consistencyProof
  descentTheoryClosed : DescentTheoryPackageClosed D.descentTheoryPackage

def DescentTheoryAnalyticCertificate.evidenceTerms (D : DescentTheoryAnalyticCertificate) : DescentTheoryAnalyticEvidenceTerms D := {
  unilinealEvidence := D.unilinealEvidenceTerm
  cognaticEvidence := D.cognaticEvidenceTerm
  bilateralEvidence := D.bilateralEvidenceTerm
  consistencyProof := D.consistencyProofTerm
  descentTheoryClosed := descent_theory_package_closed_from_evidence D.descentTheoryPackage D.descentTheoryEvidence
}

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
