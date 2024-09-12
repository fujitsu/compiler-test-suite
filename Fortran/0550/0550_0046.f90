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

CLASS(deriv),POINTER:: ptr_base => null()
allocate(ptr_base)
ptr_base%int2=10

call sub(ptr_base)
if(ASSOCIATED(ptr_base)) then
      print*,'ASSOCIATED'
      print*,ptr_base%int2
    else
      print*,'NOT ASSOCIATED YET'
    endif

contains 

subroutine sub (dum)

CLASS(deriv),target:: dum 
CLASS(base),POINTER:: ptr => null()
ptr_base%int2=20

if(ASSOCIATED(ptr)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(ptr, source = dum)
ptr%int1=19

if(ASSOCIATED(ptr)) then
  print*,'ASSOCIATED'
  print*,ptr%int1
else
  print*,'NOT ASSOCIATED YET'
endif

end subroutine

END PROGRAM
