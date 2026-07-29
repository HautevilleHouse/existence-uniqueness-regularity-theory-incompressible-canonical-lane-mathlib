import canonicalLaneMathlib.AdmissibleClass
import ExistenceUniquenessRegularityTheoryIncompressible.BridgeLemmas
import ExistenceUniquenessRegularityTheoryIncompressible.GateLemmas

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

def ConstrainedIncompressibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_incompressible_endgame (A : AdmissibleClass) :
    ConstrainedIncompressibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse