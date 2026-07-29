import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean

structure DigitalMathLibAdmittedObject where
  repository : Type u
  metadata : Prop
  conclusion : metadata

def DigitalMathLibWitnessClosed (O : DigitalMathLibAdmittedObject) : Prop :=
  O.metadata

theorem digital_math_lib_witness_closed (O : DigitalMathLibAdmittedObject) :
    DigitalMathLibWitnessClosed O := by
  exact O.conclusion

end DigitalMathematicsLibrariesRepositoriesFoundationCanonicalLaneLean
end HautevilleHouse