import AnthropologyKinshipDescentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "anthropology-kinship-descent-canonical-lane",
  theoremName := "Kinship Descent Closure",
  theoremObject := "Kinship descent admissible object",
  classicalBoundary := "Unrestricted classical descent rules",
  manifoldConstrainedStatement := "Kinship and descent constrained by bridge and gate closure",
  certificateLane := "kinship_descent_constrained",
  carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

def KinshipWitnessClosed (O : KinshipAdmittedObject) : Prop :=
  O.descentRule

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse