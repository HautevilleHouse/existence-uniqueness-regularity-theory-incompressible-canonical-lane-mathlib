import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure InitialBoundaryPackage where
  domain : Type u
  boundary : Type v
  initialVelocity : Type w
  externalForce : Type x
  divergenceFreeCondition : Prop
  boundaryConditionNoSlip : Prop
  regularityClass : Prop

structure InitialBoundaryEvidence (I : InitialBoundaryPackage) where
  divergenceFreeConditionClosed : I.divergenceFreeCondition
  boundaryConditionNoSlipClosed : I.boundaryConditionNoSlip
  regularityClassClosed : I.regularityClass

def InitialBoundaryClosed (I : InitialBoundaryPackage) : Prop :=
  I.divergenceFreeCondition ∧ I.boundaryConditionNoSlip ∧ I.regularityClass

theorem initial_boundary_closed_from_evidence (I : InitialBoundaryPackage)
    (E : InitialBoundaryEvidence I) : InitialBoundaryClosed I := by
  exact And.intro E.divergenceFreeConditionClosed
    (And.intro E.boundaryConditionNoSlipClosed E.regularityClassClosed)

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse