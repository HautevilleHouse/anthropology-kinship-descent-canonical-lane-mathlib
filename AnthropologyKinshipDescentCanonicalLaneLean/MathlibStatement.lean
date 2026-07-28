import HautevilleHouse.AnthropologyKinshipDescentCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.KinshipCore

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

open canonicalLaneMathlib.KinshipCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "kinship-descent-canonical-lane",
  theoremObject := "Constrained Kinship Descent Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Maximum-parsimony descent consistency remains an unrestricted classical closure"
}

def kinshiptheorem_specific_endgame_pilot_closed : Prop :=
  forall A : AdmissibleClass, ConstrainedKinshipClosure A

theorem kinshiptheorem_specific_endgame_pilot_checked :
    kinshiptheorem_specific_endgame_pilot_closed := by
  intro A
  exact constrained_kinship_endgame A

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
