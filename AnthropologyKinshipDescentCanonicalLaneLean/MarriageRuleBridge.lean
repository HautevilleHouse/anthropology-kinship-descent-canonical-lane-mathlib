import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

-- Marriage rules affect descent; bridge between marriage and descent
structure MarriageRule where
  ruleType : String  -- e.g., "exogamy", "endogamy", "levirate"
  preferredCousin : String  -- e.g., "cross-cousin", "parallel-cousin", "none"
  bridePrice : Prop
  allianceFormation : Prop

-- Descent implications from marriage rules
structure MarriageDescentBridge (M : MarriageRule) where
  descentTypeDetermined : Prop
  lineageExogamy : M.ruleType = "exogamy" → Prop
  allianceDescentLink : M.allianceFormation → Prop

def MarriageBridgeClosed {M : MarriageRule} (B : MarriageDescentBridge M) : Prop :=
  B.descentTypeDetermined ∧
  (∀ h : M.ruleType = "exogamy", B.lineageExogamy h) ∧
  (∀ h : M.allianceFormation, B.allianceDescentLink h)

theorem marriage_bridge_closed_from_evidence {M : MarriageRule} (B : MarriageDescentBridge M)
    (E1 : B.descentTypeDetermined) (E2 : ∀ h : M.ruleType = "exogamy", B.lineageExogamy h)
    (E3 : ∀ h : M.allianceFormation, B.allianceDescentLink h) : MarriageBridgeClosed B := by
  exact And.intro E1 (And.intro E2 E3)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse