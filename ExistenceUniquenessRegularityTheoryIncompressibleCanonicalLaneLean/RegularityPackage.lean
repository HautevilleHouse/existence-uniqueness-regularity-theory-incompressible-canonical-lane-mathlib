import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure RegularityPackage (A : AdmissibleClass) where
  viscosityCoefficient : ℝ
  initialCondition : Prop
  partialRegularity : Prop
  fullRegularity : Prop
  smoothnessPropagation : Prop
  initialConditionClosed : initialCondition
  partialRegularityClosed : partialRegularity
  fullRegularityClosed : fullRegularity
  smoothnessPropagationClosed : smoothnessPropagation

structure RegularityEvidence {A : AdmissibleClass} (R : RegularityPackage A) where
  initialConditionClosed : R.initialCondition
  partialRegularityClosed : R.partialRegularity
  fullRegularityClosed : R.fullRegularity
  smoothnessPropagationClosed : R.smoothnessPropagation

def RegularityClosed {A : AdmissibleClass} (R : RegularityPackage A) : Prop :=
  R.initialCondition ∧ R.partialRegularity ∧ R.fullRegularity ∧ R.smoothnessPropagation

theorem regularity_closed_from_evidence
    {A : AdmissibleClass} (R : RegularityPackage A) (E : RegularityEvidence R) :
    RegularityClosed R := by
  exact And.intro E.initialConditionClosed
    (And.intro E.partialRegularityClosed
      (And.intro E.fullRegularityClosed E.smoothnessPropagationClosed))

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse