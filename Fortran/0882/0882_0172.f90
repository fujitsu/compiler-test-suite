PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),allocatable:: ptr_base(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj
type (deriv), target ::arr(5)
arr(1)%int2=10

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(obj%ptr_base, source =arr)

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM

