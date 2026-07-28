import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KinshipWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse
