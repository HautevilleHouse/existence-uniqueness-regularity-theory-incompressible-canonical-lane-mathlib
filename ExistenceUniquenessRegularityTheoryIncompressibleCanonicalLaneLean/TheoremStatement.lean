import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

structure NavierStokesAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  initialVelocity : Prop
  force : Prop
  viscosity : Prop
  incompressible : Prop
  conclusion : Prop

def NavierStokesWitnessClosed (O : NavierStokesAdmittedObject) : Prop :=
  O.conclusion

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse