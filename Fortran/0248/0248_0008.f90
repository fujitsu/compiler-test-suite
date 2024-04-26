PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),allocatable:: ptr_base
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
class(deriv), pointer ::ptr(:)

allocate(ptr(10))
ptr%int1=1
ptr(10)%int1=3

allocate(obj%ptr_base, mold = ptr(10))

select type(aa=>obj%ptr_base)
 type is(deriv)
  if(sizeof(aa)/=32) print*,'pass'
end select

END PROGRAM
