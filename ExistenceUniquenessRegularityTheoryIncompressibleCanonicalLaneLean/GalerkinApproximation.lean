import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure GalerkinApproximationPackage {dim : Nat} {P : IncompressibleNSPackage}
    (W : WeakFormulationPackage P) where
  finiteDimensionalSpaces : ℕ → Type u
  projectionOperators : ℕ → (Type u → Type u)
  approximateSolution : ℕ → domain → ℝ → Vector ℝ (Fin dim)
  energyEstimates : Prop
  compactnessArgument : Prop

structure GalerkinApproximationEvidence {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (G : GalerkinApproximationPackage W) where
  energyEstimatesClosed : G.energyEstimates
  compactnessArgumentClosed : G.compactnessArgument

def GalerkinApproximationClosed {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (G : GalerkinApproximationPackage W) : Prop :=
  G.energyEstimates ∧ G.compactnessArgument

theorem galerkin_approximation_closed_from_evidence {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (G : GalerkinApproximationPackage W)
    (E : GalerkinApproximationEvidence G) : GalerkinApproximationClosed G := by
  exact And.intro E.energyEstimatesClosed E.compactnessArgumentClosed

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse