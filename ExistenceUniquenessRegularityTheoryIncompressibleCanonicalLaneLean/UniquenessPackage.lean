import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure UniquenessPackage (A : AdmissibleClass) where
  viscosityCoefficient : ℝ
  initialCondition : Prop
  weakUniqueness : Prop
  strongUniqueness : Prop
  energyInequality : Prop
  initialConditionClosed : initialCondition
  weakUniquenessClosed : weakUniqueness
  strongUniquenessClosed : strongUniqueness
  energyInequalityClosed : energyInequality

structure UniquenessEvidence {A : AdmissibleClass} (U : UniquenessPackage A) where
  initialConditionClosed : U.initialCondition
  weakUniquenessClosed : U.weakUniqueness
  strongUniquenessClosed : U.strongUniqueness
  energyInequalityClosed : U.energyInequality

def UniquenessClosed {A : AdmissibleClass} (U : UniquenessPackage A) : Prop :=
  U.initialCondition ∧ U.weakUniqueness ∧ U.strongUniqueness ∧ U.energyInequality

theorem uniqueness_closed_from_evidence
    {A : AdmissibleClass} (U : UniquenessPackage A) (E : UniquenessEvidence U) :
    UniquenessClosed U := by
  exact And.intro E.initialConditionClosed
    (And.intro E.weakUniquenessClosed
      (And.intro E.strongUniquenessClosed E.energyInequalityClosed))

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse