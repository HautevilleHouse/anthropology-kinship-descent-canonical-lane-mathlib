import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure DescentRule where
  patrilineal : Prop
  matrilineal : Prop
  bilateral : Prop
  cognatic : Prop
  doubleDescent : Prop
  ambilineal : Prop

structure DescentEvidence (R : DescentRule) where
  patrilinealClosed : R.patrilineal
  matrilinealClosed : R.matrilineal
  bilateralClosed : R.bilateral
  cognaticClosed : R.cognatic
  doubleDescentClosed : R.doubleDescent
  ambilinealClosed : R.ambilineal

def DescentRuleClosed (R : DescentRule) : Prop :=
  R.patrilineal ∧ R.matrilineal ∧ R.bilateral ∧ R.cognatic ∧ R.doubleDescent ∧ R.ambilineal

theorem descent_rule_closed_from_evidence (R : DescentRule) (E : DescentEvidence R) :
    DescentRuleClosed R := by
  exact And.intro E.patrilinealClosed
    (And.intro E.matrilinealClosed
      (And.intro E.bilateralClosed
        (And.intro E.cognaticClosed
          (And.intro E.doubleDescentClosed E.ambilinealClosed))))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse