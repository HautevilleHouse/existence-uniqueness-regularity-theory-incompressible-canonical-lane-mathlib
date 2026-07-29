import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure UniquenessStabilityPackage {dim : Nat} {P : IncompressibleNSPackage}
    (W : WeakFormulationPackage P) where
  uniquenessProof : Prop
  continuousDependence : Prop
  stabilityEstimates : Prop

structure UniquenessStabilityEvidence {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (U : UniquenessStabilityPackage W) where
  uniquenessProofClosed : U.uniquenessProof
  continuousDependenceClosed : U.continuousDependence
  stabilityEstimatesClosed : U.stabilityEstimates

def UniquenessStabilityClosed {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (U : UniquenessStabilityPackage W) : Prop :=
  U.uniquenessProof ∧ U.continuousDependence ∧ U.stabilityEstimates

theorem uniqueness_stability_closed_from_evidence {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (U : UniquenessStabilityPackage W)
    (E : UniquenessStabilityEvidence U) : UniquenessStabilityClosed U := by
  exact And.intro E.uniquenessProofClosed
    (And.intro E.continuousDependenceClosed E.stabilityEstimatesClosed)

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse