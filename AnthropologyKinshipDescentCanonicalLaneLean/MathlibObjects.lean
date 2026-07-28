import HautevilleHouse.AnthropologyKinshipDescentCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.KinshipCore

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

open canonicalLaneMathlib.KinshipCore

structure KinshipSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KinshipAdmittedObject where
  space : KinshipSpace
  unilinealDescent : Prop
  cognaticDescent : Prop
  descentConsistent : Prop
  conclusion : descentConsistent

structure KinshipEndgameState where
  object : KinshipAdmittedObject

def KinshipWitnessClosed (O : KinshipAdmittedObject) : Prop :=
  O.descentConsistent

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
