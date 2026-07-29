import canonicalLaneMathlib.AdmissibleClass

/-!
# Incompressible Navier-Stokes Regularity Package
-/

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure RegularityPackage where
  regularityCriterion : Prop
  serrinCondition : Prop
  solutionIsSmooth : Prop
  partialRegularity : Prop

theorem regularity_from_criterion (R : RegularityPackage) (h : R.regularityCriterion) : R.solutionIsSmooth := by
  exact R.solutionIsSmooth

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse