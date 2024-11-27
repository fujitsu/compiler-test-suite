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

CLASS(*),POINTER :: ptr_1(:)
CLASS(*),ALLOCATABLE:: ptr_2(:)

allocate(deriv:: ptr_1(10))

if(ALLOCATED(ptr_2)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(ptr_2, source = ptr_1(4:8))

if(ALLOCATED(ptr_2)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

END PROGRAM
