import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure IncompressibleNSPackage where
  dimension : Nat
  domain : Type u
  topology : TopologicalSpace domain
  velocityField : domain → ℝ → Vector ℝ (Fin dimension)
  pressureField : domain → ℝ → ℝ
  viscosity : ℝ
  initialCondition : domain → Vector ℝ (Fin dimension)
  forcingTerm : domain → ℝ → Vector ℝ (Fin dimension)
  incompressibilityCondition : Prop
  momentumEquation : Prop
  boundaryCondition : Prop

structure IncompressibleNSEvidence (P : IncompressibleNSPackage) where
  incompressibilityConditionClosed : P.incompressibilityCondition
  momentumEquationClosed : P.momentumEquation
  boundaryConditionClosed : P.boundaryCondition

def IncompressibleNSClosed (P : IncompressibleNSPackage) : Prop :=
  P.incompressibilityCondition ∧ P.momentumEquation ∧ P.boundaryCondition

theorem incompressible_ns_closed_from_evidence (P : IncompressibleNSPackage)
    (E : IncompressibleNSEvidence P) : IncompressibleNSClosed P := by
  exact And.intro E.incompressibilityConditionClosed
    (And.intro E.momentumEquationClosed E.boundaryConditionClosed)

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse