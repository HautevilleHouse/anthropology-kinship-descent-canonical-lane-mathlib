import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

-- Closure rules for descent: bridge and gate
structure DescentRuleClosure where
  ruleConsistent : Prop
  ruleApplicable : Prop

-- Evidence that a descent rule is closed
def descentRuleClosed (D : DescentRuleClosure) : Prop :=
  D.ruleConsistent ∧ D.ruleApplicable

-- Lemma: closure is constructive from the rule structure
theorem descent_rule_closed_from_evidence (D : DescentRuleClosure) (E : D.ruleConsistent) (F : D.ruleApplicable) :
    descentRuleClosed D := by
  exact And.intro E F

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse