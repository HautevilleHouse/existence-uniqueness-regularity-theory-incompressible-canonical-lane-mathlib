import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure WeakSolutionPackage where
  domain : Type u
  functionSpace : Type v
  existenceProof : Prop
  uniquenessProof : Prop
  regularity: Prop

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.existenceProof ∧ W.uniquenessProof ∧ W.regularity

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  existenceProofClosed : W.existenceProof
  uniquenessProofClosed : W.uniquenessProof
  regularityClosed : W.regularity

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage) (E : WeakSolutionEvidence W) :
    WeakSolutionClosed W := by
  exact And.intro E.existenceProofClosed (And.intro E.uniquenessProofClosed E.regularityClosed)

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse