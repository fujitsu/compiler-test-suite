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

CLASS(deriv),POINTER:: ptr_base
call sub(ptr_base)
if(ASSOCIATED(ptr_base)) then
  print*,'ASSOCIATED'
  print*,ptr_base%int2
else
  print*,'NOT ASSOCIATED YET'
endif
contains 
subroutine sub (dum)
CLASS(deriv), POINTER:: dum 
CLASS(base),ALLOCATABLE:: ptr
allocate(dum)
dum%int2=19

if(ALLOCATED(ptr)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(ptr, source = dum)
ptr%real1=5.345

if(ALLOCATED(ptr)) then
  print*,'ALLOCATED'
  print*,ptr%real1
else
  print*,'NOT ALLOCATED YET'
endif

end subroutine

END PROGRAM
