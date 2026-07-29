import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure PressureRecoveryPackage (A : AdmissibleClass) where
  velocityField : Prop
  divergenceFree : Prop
  pressureExists : Prop
  pressureRegularity : Prop
  compatibilityWithNS : Prop
  velocityFieldClosed : velocityField
  divergenceFreeClosed : divergenceFree
  pressureExistsClosed : pressureExists
  pressureRegularityClosed : pressureRegularity
  compatibilityWithNSClosed : compatibilityWithNS

structure PressureRecoveryEvidence {A : AdmissibleClass} (P : PressureRecoveryPackage A) where
  velocityFieldClosed : P.velocityField
  divergenceFreeClosed : P.divergenceFree
  pressureExistsClosed : P.pressureExists
  pressureRegularityClosed : P.pressureRegularity
  compatibilityWithNSClosed : P.compatibilityWithNS

def PressureRecoveryClosed {A : AdmissibleClass} (P : PressureRecoveryPackage A) : Prop :=
  P.velocityField ∧ P.divergenceFree ∧ P.pressureExists ∧ P.pressureRegularity ∧ P.compatibilityWithNS

theorem pressure_recovery_closed_from_evidence
    {A : AdmissibleClass} (P : PressureRecoveryPackage A) (E : PressureRecoveryEvidence P) :
    PressureRecoveryClosed P := by
  exact And.intro E.velocityFieldClosed
    (And.intro E.divergenceFreeClosed
      (And.intro E.pressureExistsClosed
        (And.intro E.pressureRegularityClosed E.compatibilityWithNSClosed)))

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse