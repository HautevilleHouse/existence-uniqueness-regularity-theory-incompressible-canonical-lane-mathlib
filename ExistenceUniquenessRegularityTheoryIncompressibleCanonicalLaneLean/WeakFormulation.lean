import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure WeakFormulationPackage {dim : Nat} (P : IncompressibleNSPackage) where
  testFunctionSpace : Type u
  weakFormIntegrals : Prop
  pressureTreatment : Prop
  weakSolutionDefinition : Prop

structure WeakFormulationEvidence {dim : Nat} {P : IncompressibleNSPackage}
    (W : WeakFormulationPackage P) where
  weakFormIntegralsClosed : W.weakFormIntegrals
  pressureTreatmentClosed : W.pressureTreatment
  weakSolutionDefinitionClosed : W.weakSolutionDefinition

def WeakFormulationClosed {dim : Nat} {P : IncompressibleNSPackage}
    (W : WeakFormulationPackage P) : Prop :=
  W.weakFormIntegrals ∧ W.pressureTreatment ∧ W.weakSolutionDefinition

theorem weak_formulation_closed_from_evidence {dim : Nat} {P : IncompressibleNSPackage}
    (W : WeakFormulationPackage P) (E : WeakFormulationEvidence W) :
    WeakFormulationClosed W := by
  exact And.intro E.weakFormIntegralsClosed
    (And.intro E.pressureTreatmentClosed E.weakSolutionDefinitionClosed)

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse