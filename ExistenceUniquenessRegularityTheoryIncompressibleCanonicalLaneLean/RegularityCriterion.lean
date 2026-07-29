import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean.LerayHopf

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure RegularityCriterionPackage {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} {L : LerayHopfPackage W} where
  ladyzhenskayaProdiSerrin : Prop
  escaurzaSereginSverak : Prop
  vorticityControlled : Prop

structure RegularityCriterionEvidence {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} {L : LerayHopfPackage W} (R : RegularityCriterionPackage L) where
  ladyzhenskayaProdiSerrinClosed : R.ladyzhenskayaProdiSerrin
  escaurzaSereginSverakClosed : R.escaurzaSereginSverak
  vorticityControlledClosed : R.vorticityControlled

def RegularityCriterionClosed {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} {L : LerayHopfPackage W} (R : RegularityCriterionPackage L) : Prop :=
  R.ladyzhenskayaProdiSerrin ∧ R.escaurzaSereginSverak ∧ R.vorticityControlled

theorem regularity_criterion_closed_from_evidence {N : NavierStokesPDEPackage} {W : WeakSolutionPackage N} {L : LerayHopfPackage W} (R : RegularityCriterionPackage L) (E : RegularityCriterionEvidence R) : RegularityCriterionClosed R := by
  exact And.intro E.ladyzhenskayaProdiSerrinClosed (And.intro E.escaurzaSereginSverakClosed E.vorticityControlledClosed)

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse