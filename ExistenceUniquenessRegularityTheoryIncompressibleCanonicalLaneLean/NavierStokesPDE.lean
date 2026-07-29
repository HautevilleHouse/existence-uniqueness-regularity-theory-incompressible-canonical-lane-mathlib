import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure NavierStokesPDEPackage where
  velocityField : Type u
  pressureField : Type v
  viscosityCoefficient : ℝ
  incompressibilityConstraint : Prop
  momentumEquation : Prop
  wellPosedness : Prop

structure NavierStokesPDEEvidence (N : NavierStokesPDEPackage) where
  incompressibilityConstraintClosed : N.incompressibilityConstraint
  momentumEquationClosed : N.momentumEquation
  wellPosednessClosed : N.wellPosedness

def NavierStokesPDEClosed (N : NavierStokesPDEPackage) : Prop :=
  N.incompressibilityConstraint ∧ N.momentumEquation ∧ N.wellPosedness

theorem navier_stokes_pde_closed_from_evidence (N : NavierStokesPDEPackage)
    (E : NavierStokesPDEEvidence N) : NavierStokesPDEClosed N := by
  exact And.intro E.incompressibilityConstraintClosed
    (And.intro E.momentumEquationClosed E.wellPosednessClosed)

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse