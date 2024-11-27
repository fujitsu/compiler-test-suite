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
CLASS(deriv),ALLOCATABLE:: ptr_base(:, :)

if(ALLOCATED(ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(ptr_base(5, 7))
ptr_base(1,1)%real2=9.3

if(ALLOCATED(ptr_base)) then
  print*,'ALLOCATED'
  print*,ptr_base(1,1)%real2
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM
