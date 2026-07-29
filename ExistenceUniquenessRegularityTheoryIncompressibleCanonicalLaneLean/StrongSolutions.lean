import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure StrongSolutionPackage where
  domain : Type u
  initialCondition : Prop
  timeInterval : Prop
  existenceLocal : Prop
  regularityClass : Prop

def StrongSolutionClosed (S : StrongSolutionPackage) : Prop :=
  S.existenceLocal ∧ S.regularityClass

structure StrongSolutionEvidence (S : StrongSolutionPackage) where
  existenceLocalClosed : S.existenceLocal
  regularityClassClosed : S.regularityClass

theorem strong_solution_closed_from_evidence (S : StrongSolutionPackage) (E : StrongSolutionEvidence S) :
    StrongSolutionClosed S := by
  exact And.intro E.existenceLocalClosed E.regularityClassClosed

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse