import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean.NavierStokesPDE

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure WeakSolutionPackage {N : NavierStokesPDEPackage} where
  testFunctionSpace : Type u
  weakFormulation : Prop
  existenceResult : Prop
  uniquenessResult : Prop
  regularityResult : Prop

structure WeakSolutionEvidence {N : NavierStokesPDEPackage} (W : WeakSolutionPackage N) where
  weakFormulationClosed : W.weakFormulation
  existenceResultClosed : W.existenceResult
  uniquenessResultClosed : W.uniquenessResult
  regularityResultClosed : W.regularityResult

def WeakSolutionClosed {N : NavierStokesPDEPackage} (W : WeakSolutionPackage N) : Prop :=
  W.weakFormulation ∧ W.existenceResult ∧ W.uniquenessResult ∧ W.regularityResult

theorem weak_solution_closed_from_evidence {N : NavierStokesPDEPackage} (W : WeakSolutionPackage N) (E : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro E.weakFormulationClosed (And.intro E.existenceResultClosed (And.intro E.uniquenessResultClosed E.regularityResultClosed))

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse