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

CLASS(deriv),allocatable:: ptr_base

call sub(ptr_base)
if(ALLOCATED(ptr_base)) then
      print*,'ALLOCATED'
      print*,ptr_base%real2
    else
      print*,'NOT ALLOCATED YET'
    endif
contains 

subroutine sub(dum)
CLASS(deriv),allocatable::dum 

if(ALLOCATED(dum)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(dum)
dum%real2=6.6

if(ALLOCATED(dum)) then
  print*,'ALLOCATED'
  print*,dum%real2
else
  print*,'NOT ALLOCATED YET'
endif

end subroutine

END PROGRAM
