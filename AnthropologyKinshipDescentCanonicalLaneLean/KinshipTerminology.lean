import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

-- Kinship terminology systems (e.g., Eskimo, Hawaiian, Omaha, Crow, Iroquois)
inductive TerminologyType
| Eskimo
| Hawaiian
| Omaha
| Crow
| Iroquois
deriving Repr, DecidableEq

-- Structure for kinship terminology rules
structure KinshipTerminology where
  terminologyType : TerminologyType
  bifurcateMerging : Prop
  generationalSkew : Prop
  cousinTermsEquivalent : Prop
  avuncularTerms : String

-- Evidence that terminology is consistent with descent
structure TerminologyDescentConsistency (T : KinshipTerminology) where
  terminologyTypeClosed : T.terminologyType = T.terminologyType
  bifurcateMergingClosed : T.bifurcateMerging
  generationalSkewClosed : T.generationalSkew
  cousinTermsEquivalentClosed : T.cousinTermsEquivalent

def TerminologyConsistent (T : KinshipTerminology) : Prop :=
  T.bifurcateMerging ∧ T.generationalSkew ∧ T.cousinTermsEquivalent

theorem terminology_consistent_from_evidence (T : KinshipTerminology) (E : TerminologyDescentConsistency T) :
    TerminologyConsistent T := by
  exact And.intro E.bifurcateMergingClosed
    (And.intro E.generationalSkewClosed E.cousinTermsEquivalentClosed)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse