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

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(obj%ptr_base, source =ptr(10))

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
  print*,obj%ptr_base%int1
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM

