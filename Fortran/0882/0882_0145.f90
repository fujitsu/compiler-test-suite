PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),ALLOCATABLE:: ptr_base
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type(deriv) ::obj

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(deriv :: obj%ptr_base)

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM
