import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure DescentSystemPackage where
  descentType : String
  kinshipGroups : Type u
  lineageDefinition : Prop
  descentRules : Prop
  marriageRules : Prop

structure DescentSystemEvidence (D : DescentSystemPackage) where
  lineageDefinitionClosed : D.lineageDefinition
  descentRulesClosed : D.descentRules
  marriageRulesClosed : D.marriageRules

def DescentSystemClosed (D : DescentSystemPackage) : Prop :=
  D.lineageDefinition ∧ D.descentRules ∧ D.marriageRules

theorem descent_system_closed_from_evidence (D : DescentSystemPackage) (E : DescentSystemEvidence D) :
    DescentSystemClosed D := by
  exact And.intro E.lineageDefinitionClosed
    (And.intro E.descentRulesClosed E.marriageRulesClosed)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse