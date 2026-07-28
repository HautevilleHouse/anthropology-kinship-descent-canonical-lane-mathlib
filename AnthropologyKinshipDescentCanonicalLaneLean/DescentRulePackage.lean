import AnthropologyKinshipDescentCanonicalLaneLean.KinshipGroupStructure

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure DescentRulePackage (G : KinshipGroupStructure) where
  ruleType : Type u
  application : Type v
  consistent : Prop
  transmitsLineage : Prop
  marriageCircles : Prop

def DescentRuleClosed {G : KinshipGroupStructure} (D : DescentRulePackage G) : Prop :=
  D.consistent ∧ D.transmitsLineage ∧ D.marriageCircles

structure DescentRuleEvidence {G : KinshipGroupStructure} (D : DescentRulePackage G) where
  consistentClosed : D.consistent
  transmitsLineageClosed : D.transmitsLineage
  marriageCirclesClosed : D.marriageCircles

theorem descent_rule_closed_from_evidence {G : KinshipGroupStructure}
    (D : DescentRulePackage G) (E : DescentRuleEvidence D) : DescentRuleClosed D := by
  exact And.intro E.consistentClosed
    (And.intro E.transmitsLineageClosed E.marriageCirclesClosed)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
