import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyKinshipDescentCanonicalLaneLean

structure MarriageSystem where
  exogamy : Prop
  endogamy : Prop
  monogamy : Prop
  polygyny : Prop
  polyandry : Prop
  levirate : Prop
  sororate : Prop

structure MarriageEvidence (M : MarriageSystem) where
  exogamyClosed : M.exogamy
  endogamyClosed : M.endogamy
  monogamyClosed : M.monogamy
  polygynyClosed : M.polygyny
  polyandryClosed : M.polyandry
  levirateClosed : M.levirate
  sororateClosed : M.sororate

def MarriageSystemClosed (M : MarriageSystem) : Prop :=
  M.exogamy ∧ M.endogamy ∧ M.monogamy ∧ M.polygyny ∧ M.polyandry ∧ M.levirate ∧ M.sororate

theorem marriage_system_closed_from_evidence (M : MarriageSystem) (E : MarriageEvidence M) :
    MarriageSystemClosed M := by
  exact And.intro E.exogamyClosed
    (And.intro E.endogamyClosed
      (And.intro E.monogamyClosed
        (And.intro E.polygynyClosed
          (And.intro E.polyandryClosed
            (And.intro E.levirateClosed E.sororateClosed)))))

end AnthropologyKinshipDescentCanonicalLaneLean
end HautevilleHouse