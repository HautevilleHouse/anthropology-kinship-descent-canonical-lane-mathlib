import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

-- Descent types: patrilineal, matrilineal, bilateral, cognatic
inductive DescentType
| Patrilineal
| Matrilineal
| Bilateral
| Cognatic
deriving Repr, DecidableEq

-- Structure representing a kinship system with descent rule
structure KinshipDescentSystem where
  societyName : String
  descentType : DescentType
  lineageDepth : Nat
  exogamousClans : Bool
  lineageSegmentation : Prop
  inheritanceRule : Prop
  residenceRule : Prop

-- Evidence that a kinship system satisfies its descent constraints
structure KinshipDescentEvidence (K : KinshipDescentSystem) where
  descentTypeClosed : K.descentType = K.descentType  -- tautological
  lineageDepthClosed : K.lineageDepth ≥ 1
  exogamousClansClosed : K.exogamousClans = true
  lineageSegmentationClosed : K.lineageSegmentation
  inheritanceRuleClosed : K.inheritanceRule
  residenceRuleClosed : K.residenceRule

def KinshipDescentSystemClosed (K : KinshipDescentSystem) : Prop :=
  K.lineageDepth ≥ 1 ∧
  K.exogamousClans = true ∧
  K.lineageSegmentation ∧
  K.inheritanceRule ∧
  K.residenceRule

theorem kinship_descent_system_closed_from_evidence (K : KinshipDescentSystem) (E : KinshipDescentEvidence K) :
    KinshipDescentSystemClosed K := by
  exact And.intro E.lineageDepthClosed
    (And.intro E.exogamousClansClosed
      (And.intro E.lineageSegmentationClosed
        (And.intro E.inheritanceRuleClosed E.residenceRuleClosed)))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse