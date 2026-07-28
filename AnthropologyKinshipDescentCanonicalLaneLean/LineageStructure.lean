import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

-- Structure representing a lineage or clan
structure LineageStructure where
  lineageName : String
  founder : String
  currentGeneration : Nat
  membership : List String
  apicalAncestor : String
  segmentationHistory : List String

-- Evidence that a lineage is well-defined
structure LineageEvidence (L : LineageStructure) where
  membershipNonempty : L.membership ≠ []
  currentGenerationPositive : L.currentGeneration ≥ 1
  apicalAncestorInMembership : L.apicalAncestor ∈ L.membership

def LineageClosed (L : LineageStructure) : Prop :=
  L.membership ≠ [] ∧ L.currentGeneration ≥ 1 ∧ L.apicalAncestor ∈ L.membership

theorem lineage_closed_from_evidence (L : LineageStructure) (E : LineageEvidence L) : LineageClosed L := by
  exact And.intro E.membershipNonempty
    (And.intro E.currentGenerationPositive E.apicalAncestorInMembership)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse