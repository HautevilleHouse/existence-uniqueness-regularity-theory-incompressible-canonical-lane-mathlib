import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean.WeakSolution

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure LerayHopfPackage {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} where
  energyInequality : Prop
  globalExistence : Prop
  weakStrongUniqueness : Prop
  partialRegularity : Prop

structure LerayHopfEvidence {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} (L : LerayHopfPackage W) where
  energyInequalityClosed : L.energyInequality
  globalExistenceClosed : L.globalExistence
  weakStrongUniquenessClosed : L.weakStrongUniqueness
  partialRegularityClosed : L.partialRegularity

def LerayHopfClosed {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} (L : LerayHopfPackage W) : Prop :=
  L.energyInequality ∧ L.globalExistence ∧ L.weakStrongUniqueness ∧ L.partialRegularity

theorem leray_hopf_closed_from_evidence {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} (L : LerayHopfPackage W) (E : LerayHopfEvidence L) : LerayHopfClosed L := by
  exact And.intro E.energyInequalityClosed (And.intro E.globalExistenceClosed (And.intro E.weakStrongUniquenessClosed E.partialRegularityClosed))

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse