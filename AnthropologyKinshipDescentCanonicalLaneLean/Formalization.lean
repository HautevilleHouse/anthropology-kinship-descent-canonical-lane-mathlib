import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyKinshipDescentCanonicalLaneLean.DescentRules

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure SourceFormulaModel where
  group : String
  key : String
  formula : String
  validation : String

structure FormalizationCertificate where
  sourceRepo : String
  descentSystemFormalized : Bool
  terminologyFormalized : Bool
  rulesFormalized : Bool
  sourceConjectureClosureClaimed : Bool

def sourceFormulaModels : List SourceFormulaModel :=
  [{ group := "constants", key := "descent_coherence", formula := "descent_coherence_raw", validation := "required_positive" }]

def formalizationCertificate : FormalizationCertificate :=
  { sourceRepo := "anthropology-kinship-descent-canonical-lane",
    descentSystemFormalized := true,
    terminologyFormalized := true,
    rulesFormalized := true,
    sourceConjectureClosureClaimed := false
  }

theorem formalization_no_source_conjecture_closure_claim :
    formalizationCertificate.sourceConjectureClosureClaimed = false :=
  rfl

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse