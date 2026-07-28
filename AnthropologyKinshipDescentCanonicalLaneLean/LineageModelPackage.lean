import AnthropologyKinshipDescentCanonicalLaneLean.DescentRulePackage

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure LineageModelPackage (G : KinshipGroupStructure) (D : DescentRulePackage G) where
  lineageTree : Type u
  ancestorTracking : Prop
  generationalSegment : Prop
  bifurcationModel : Prop
  extinctionAccounted : Prop

def LineageModelClosed {G : KinshipGroupStructure} {D : DescentRulePackage G}
    (L : LineageModelPackage G D) : Prop :=
  L.ancestorTracking ∧ L.generationalSegment ∧ L.bifurcationModel ∧ L.extinctionAccounted

structure LineageModelEvidence {G : KinshipGroupStructure} {D : DescentRulePackage G}
    (L : LineageModelPackage G D) where
  ancestorTrackingClosed : L.ancestorTracking
  generationalSegmentClosed : L.generationalSegment
  bifurcationModelClosed : L.bifurcationModel
  extinctionAccountedClosed : L.extinctionAccounted

theorem lineage_model_closed_from_evidence {G : KinshipGroupStructure}
    {D : DescentRulePackage G} (L : LineageModelPackage G D)
    (E : LineageModelEvidence L) : LineageModelClosed L := by
  exact And.intro E.ancestorTrackingClosed
    (And.intro E.generationalSegmentClosed
      (And.intro E.bifurcationModelClosed E.extinctionAccountedClosed))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
