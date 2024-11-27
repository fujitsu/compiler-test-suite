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
CLASS(*),allocatable:: ptr_base
if(ALLOCATED(ptr_base)) then
      print*,'ALLOCATED'
    else
      print*,'NOT ALLOCATED YET'
    endif
call sub(ptr_base)
contains 

subroutine sub(dum)
CLASS(*),allocatable::dum 

if(ALLOCATED(dum)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

allocate(deriv :: dum)

if(ALLOCATED(dum)) then
  print*,'ALLOCATED'
else
  print*,'NOT ALLOCATED YET'
endif

end subroutine

END PROGRAM
