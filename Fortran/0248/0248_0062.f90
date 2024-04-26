PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1=6
  INTEGER(KIND=8) ::int1=6
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),allocatable:: ptr_base(:)
  INTEGER(KIND=8) :: int2=6
  REAL(KIND=8) ::real2=6
END TYPE 

type (deriv) ::obj
class(deriv), pointer ::ptr(:)

allocate(ptr(10))
ptr%int1=1
ptr(10)%int1=3

allocate(obj%ptr_base, mold = ptr)

select type(aa=>obj%ptr_base)
 type is(deriv)
  if(size(aa)/=10) print*,101
  print*,'pass'
end select

deallocate(ptr)
allocate(ptr(4))
if(size(obj%ptr_base)/=10) print*,102
END PROGRAM MAIN
