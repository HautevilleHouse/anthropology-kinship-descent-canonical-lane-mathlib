import HautevilleHouse.AnthropologyKinshipDescentCanonicalLaneLean.DescentRules

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure DescentTheoryPackage where
  unilinealDescentTheory : Prop
  cognaticDescentTheory : Prop
  bilateralDescentTheory : Prop
  consistencyCondition : Prop

structure DescentTheoryEvidence (D : DescentTheoryPackage) where
  unilinealDescentTheoryClosed : D.unilinealDescentTheory
  cognaticDescentTheoryClosed : D.cognaticDescentTheory
  bilateralDescentTheoryClosed : D.bilateralDescentTheory
  consistencyConditionClosed : D.consistencyCondition

def DescentTheoryPackageClosed (D : DescentTheoryPackage) : Prop :=
  D.unilinealDescentTheory ∧ D.cognaticDescentTheory ∧ D.bilateralDescentTheory ∧ D.consistencyCondition

theorem descent_theory_package_closed_from_evidence (D : DescentTheoryPackage) (E : DescentTheoryEvidence D) : DescentTheoryPackageClosed D := by
  exact And.intro E.unilinealDescentTheoryClosed
    (And.intro E.cognaticDescentTheoryClosed
      (And.intro E.bilateralDescentTheoryClosed E.consistencyConditionClosed))

structure DescentTheoryAnalyticCertificate (D : DescentTheoryPackage) where
  unilinealEvidence : Prop
  cognaticEvidence : Prop
  bilateralEvidence : Prop
  consistencyProof : Prop
  unilinealEvidenceTerm : unilinealEvidence
  cognaticEvidenceTerm : cognaticEvidence
  bilateralEvidenceTerm : bilateralEvidence
  consistencyProofTerm : consistencyProof
  descentTheoryEvidence : DescentTheoryEvidence D

def DescentTheoryAnalyticCertificateClosed (D : DescentTheoryPackage) (C : DescentTheoryAnalyticCertificate D) : Prop :=
  C.unilinealEvidence ∧ C.cognaticEvidence ∧ C.bilateralEvidence ∧ C.consistencyProof ∧ DescentTheoryPackageClosed D

theorem descent_theory_analytic_certificate_closed (D : DescentTheoryPackage) (C : DescentTheoryAnalyticCertificate D) : DescentTheoryAnalyticCertificateClosed D C := by
  exact And.intro C.unilinealEvidenceTerm
    (And.intro C.cognaticEvidenceTerm
      (And.intro C.bilateralEvidenceTerm
        (And.intro C.consistencyProofTerm (descent_theory_package_closed_from_evidence D C.descentTheoryEvidence))))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
