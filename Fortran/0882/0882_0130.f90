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

CLASS(base),POINTER:: ptr_base => NULL()

call sub(ptr_base)
if(ASSOCIATED(ptr_base)) then
      print*,'ASSOCIATED'
      print*,ptr_base%int1
    else
      print*,'NOT ASSOCIATED YET'
    endif
contains 
subroutine sub(dum)
  CLASS(base),POINTER::dum 

    if(ASSOCIATED(dum)) then
      print*,'ASSOCIATED'
    else
      print*,'NOT ASSOCIATED YET'
    endif

    allocate(dum)
    dum%int1=19

    if(ASSOCIATED(dum)) then
      print*,'ASSOCIATED'
      print*,dum%int1
    else
      print*,'NOT ASSOCIATED YET'
    endif
end subroutine
END PROGRAM
