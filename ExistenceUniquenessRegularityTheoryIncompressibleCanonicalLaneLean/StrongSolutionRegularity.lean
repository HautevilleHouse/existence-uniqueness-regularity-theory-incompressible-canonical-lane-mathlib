import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure StrongSolutionRegularityPackage where
  higherRegularityEstimate : Prop
  pressureRegularity : Prop
  uniqueness : Prop
  continuousDependenceOnData : Prop

structure StrongSolutionRegularityEvidence (S : StrongSolutionRegularityPackage) where
  higherRegularityEstimateClosed : S.higherRegularityEstimate
  pressureRegularityClosed : S.pressureRegularity
  uniquenessClosed : S.uniqueness
  continuousDependenceOnDataClosed : S.continuousDependenceOnData

def StrongSolutionRegularityClosed (S : StrongSolutionRegularityPackage) : Prop :=
  S.higherRegularityEstimate ∧ S.pressureRegularity ∧ S.uniqueness ∧ S.continuousDependenceOnData

theorem strong_solution_regularity_closed_from_evidence (S : StrongSolutionRegularityPackage)
    (E : StrongSolutionRegularityEvidence S) : StrongSolutionRegularityClosed S := by
  exact And.intro E.higherRegularityEstimateClosed
    (And.intro E.pressureRegularityClosed
      (And.intro E.uniquenessClosed E.continuousDependenceOnDataClosed))

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse