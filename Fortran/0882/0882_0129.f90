PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
CLASS(base),ALLOCATABLE:: ptr_base(:, :)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 

type (deriv) ::obj

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(obj%ptr_base(5,7))
obj%ptr_base(1,1)%int1=5

if(ALLOCATED(obj%ptr_base)) then
  print*,'ALLOCATED'
  print*,obj%ptr_base(1,1)%int1
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM
