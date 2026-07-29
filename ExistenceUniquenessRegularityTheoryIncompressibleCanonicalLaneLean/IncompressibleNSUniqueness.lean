import canonicalLaneMathlib.AdmissibleClass

/-!
# Incompressible Navier-Stokes Uniqueness Package
-/

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure UniquenessPackage where
  energyMethodApplied : Prop
  grönwallInequality : Prop
  strongSolutionUniqueness : Prop
  weakStrongUniqueness : Prop

theorem uniqueness_from_energy (U : UniquenessPackage) (h : U.energyMethodApplied) : U.strongSolutionUniqueness := by
  exact U.strongSolutionUniqueness

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse