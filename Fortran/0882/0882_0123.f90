PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
CLASS(base),ALLOCATABLE:: ptr_base

if(ALLOCATED(ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(ptr_base)
ptr_base%int1=20

if(ALLOCATED(ptr_base)) then
  print*,'ALLOCATED'
  print*,ptr_base%int1
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM
