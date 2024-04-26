PROGRAM MAIN

IMPLICIT NONE

TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE

TYPE ,EXTENDS(base)::deriv
  CLASS(base),allocatable:: ptr_base(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
class(deriv), pointer ::ptr(:)
allocate(ptr(10))
ptr%int1=10

allocate(obj%ptr_base, mold =ptr)

if(ALLOCATED(obj%ptr_base)) then
  if(same_type_as(obj%ptr_base,ptr)) print*,'pass'
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM MAIN
