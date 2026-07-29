import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure EnergyEstimatesPackage (A : AdmissibleClass) where
  viscosityCoefficient : ℝ
  initialCondition : Prop
  energyInequalityEstimate : Prop
  enstrophyEstimate : Prop
  higherOrderEstimates : Prop
  initialConditionClosed : initialCondition
  energyInequalityEstimateClosed : energyInequalityEstimate
  enstrophyEstimateClosed : enstrophyEstimate
  higherOrderEstimatesClosed : higherOrderEstimates

structure EnergyEstimatesEvidence {A : AdmissibleClass} (E : EnergyEstimatesPackage A) where
  initialConditionClosed : E.initialCondition
  energyInequalityEstimateClosed : E.energyInequalityEstimate
  enstrophyEstimateClosed : E.enstrophyEstimate
  higherOrderEstimatesClosed : E.higherOrderEstimates

def EnergyEstimatesClosed {A : AdmissibleClass} (E : EnergyEstimatesPackage A) : Prop :=
  E.initialCondition ∧ E.energyInequalityEstimate ∧ E.enstrophyEstimate ∧ E.higherOrderEstimates

theorem energy_estimates_closed_from_evidence
    {A : AdmissibleClass} (E : EnergyEstimatesPackage A) (Ev : EnergyEstimatesEvidence E) :
    EnergyEstimatesClosed E := by
  exact And.intro Ev.initialConditionClosed
    (And.intro Ev.energyInequalityEstimateClosed
      (And.intro Ev.enstrophyEstimateClosed Ev.higherOrderEstimatesClosed))

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse