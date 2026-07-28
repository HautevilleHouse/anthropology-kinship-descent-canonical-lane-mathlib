import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure KinshipTerminology where
  eskimo : Prop
  hawaiian : Prop
  iroquois : Prop
  crow : Prop
  omaha : Prop
  sudanese : Prop
  descriptive : Prop

structure KinshipEvidence (T : KinshipTerminology) where
  eskimoClosed : T.eskimo
  hawaiianClosed : T.hawaiian
  iroquoisClosed : T.iroquois
  crowClosed : T.crow
  omahaClosed : T.omaha
  sudaneseClosed : T.sudanese
  descriptiveClosed : T.descriptive

def KinshipTerminologyClosed (T : KinshipTerminology) : Prop :=
  T.eskimo ∧ T.hawaiian ∧ T.iroquois ∧ T.crow ∧ T.omaha ∧ T.sudanese ∧ T.descriptive

theorem kinship_terminology_closed_from_evidence (T : KinshipTerminology) (E : KinshipEvidence T) :
    KinshipTerminologyClosed T := by
  exact And.intro E.eskimoClosed
    (And.intro E.hawaiianClosed
      (And.intro E.iroquoisClosed
        (And.intro E.crowClosed
          (And.intro E.omahaClosed
            (And.intro E.sudaneseClosed E.descriptiveClosed)))))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse