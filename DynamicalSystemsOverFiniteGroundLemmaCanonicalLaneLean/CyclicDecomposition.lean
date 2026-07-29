import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean

structure CyclicDecompositionPackage where
  space : Type u
  dynamics : space → space
  finiteGroundSet : Finset space
  decomposition : Finset (Finset space)
  partitionProperty : (⋃ s ∈ decomposition, s) = finiteGroundSet
  cycleProperty : ∀ s ∈ decomposition, ∀ x ∈ s, dynamics x ∈ s

def CyclicDecompositionClosed (C : CyclicDecompositionPackage) : Prop :=
  C.partitionProperty ∧ C.cycleProperty

theorem cyclic_decomposition_closed (C : CyclicDecompositionPackage) :
    CyclicDecompositionClosed C := by
  exact And.intro C.partitionProperty C.cycleProperty

end DynamicalSystemsOverFiniteGroundLemmaCanonicalLaneLean
end HautevilleHouse