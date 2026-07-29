import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceUniquenessRegularityTheoryIncompressible

structure FunctionSpacesPackage (dim : Nat) where
  sobolevSpace : Type u
  sobolevNorm : sobolevSpace → ℝ
  holderSpace : Type v
  holderNorm : holderSpace → ℝ
  lebesgueSpace : Type w
  lebesgueNorm : lebesgueSpace → ℝ
  embeddingTheorems : Prop
  compactnessProperties : Prop

structure FunctionSpacesEvidence {dim : Nat}
    (F : FunctionSpacesPackage dim) where
  embeddingTheoremsClosed : F.embeddingTheorems
  compactnessPropertiesClosed : F.compactnessProperties

def FunctionSpacesClosed {dim : Nat} (F : FunctionSpacesPackage dim) : Prop :=
  F.embeddingTheorems ∧ F.compactnessProperties

theorem function_spaces_closed_from_evidence {dim : Nat}
    (F : FunctionSpacesPackage dim) (E : FunctionSpacesEvidence F) :
    FunctionSpacesClosed F := by
  exact And.intro E.embeddingTheoremsClosed E.compactnessPropertiesClosed

end ExistenceUniquenessRegularityTheoryIncompressible
end HautevilleHouse