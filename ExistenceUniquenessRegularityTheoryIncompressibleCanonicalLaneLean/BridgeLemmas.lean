import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IncompressibleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExistenceUniquenessRegularityTheoryIncompressibleCanonicalLaneLean
end HautevilleHouse