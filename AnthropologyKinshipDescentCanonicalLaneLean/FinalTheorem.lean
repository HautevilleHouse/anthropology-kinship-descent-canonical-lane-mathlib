import AnthropologyKinshipDescentCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

def ConstrainedKinshipDescentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_kinship_descent_endgame (A : AdmissibleClass) :
    ConstrainedKinshipDescentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
