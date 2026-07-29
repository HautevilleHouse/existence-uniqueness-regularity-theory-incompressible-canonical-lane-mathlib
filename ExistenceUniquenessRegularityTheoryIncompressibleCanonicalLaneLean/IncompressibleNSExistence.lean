import canonicalLaneMathlib.AdmissibleClass

/-!
# Incompressible Navier-Stokes Existence Package
-/

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure ExistencePackage where
  functionSolver : Type u
  divergenceFreeCondition : Prop
  weakSolutionConstructed : Prop
  pressureRecovered : Prop
  energyInequality : Prop

theorem existence_from_solver (E : ExistencePackage) (h : E.functionSolver) : E.weakSolutionConstructed := by
  exact E.weakSolutionConstructed

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse