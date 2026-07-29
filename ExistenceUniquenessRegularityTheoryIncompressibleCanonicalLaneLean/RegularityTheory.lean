import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure RegularityTheoryPackage {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  higherRegularity : Prop

def RegularityTheoryClosed {dim : Nat} {P : IncompressibleNSPackage}
    {W : WeakFormulationPackage P} (R : RegularityTheoryPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.higherRegularity

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse