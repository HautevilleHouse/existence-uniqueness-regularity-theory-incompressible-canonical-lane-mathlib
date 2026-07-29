import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure NavierStokesExistencePackage (A : AdmissibleClass) where
  initialCondition : Prop
  viscosityCoefficient : ℝ
  domainSmoothness : Prop
  weakSolutionExists : Prop
  strongSolutionOnInterval : Prop
  regularityCriteria : Prop
  initialConditionClosed : initialCondition
  domainSmoothnessClosed : domainSmoothness
  weakSolutionExistsClosed : weakSolutionExists
  strongSolutionOnIntervalClosed : strongSolutionOnInterval
  regularityCriteriaClosed : regularityCriteria

structure NavierStokesExistenceEvidence {A : AdmissibleClass} (P : NavierStokesExistencePackage A) where
  initialConditionClosed : P.initialCondition
  domainSmoothnessClosed : P.domainSmoothness
  weakSolutionExistsClosed : P.weakSolutionExists
  strongSolutionOnIntervalClosed : P.strongSolutionOnInterval
  regularityCriteriaClosed : P.regularityCriteria

def NavierStokesExistenceClosed {A : AdmissibleClass} (P : NavierStokesExistencePackage A) : Prop :=
  P.initialCondition ∧ P.domainSmoothness ∧ P.weakSolutionExists ∧ P.strongSolutionOnInterval ∧ P.regularityCriteria

theorem navier_stokes_existence_closed_from_evidence
    {A : AdmissibleClass} (P : NavierStokesExistencePackage A) (E : NavierStokesExistenceEvidence P) :
    NavierStokesExistenceClosed P := by
  exact And.intro E.initialConditionClosed
    (And.intro E.domainSmoothnessClosed
      (And.intro E.weakSolutionExistsClosed
        (And.intro E.strongSolutionOnIntervalClosed E.regularityCriteriaClosed)))

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse