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
allocate(ptr_base)
ptr_base%int2=10

call sub(ptr_base)
contains 

subroutine sub (dum)

CLASS(deriv),target:: dum 
CLASS(base),POINTER:: ptr
ptr_base%int2=20

dum%int1=19
allocate(ptr, mold = dum)

if(ASSOCIATED(ptr)) then
  print*,'pass'
  select type(ptr)
  type is(base)
   print*,103
  type is(deriv)
  class default
   print*,104
  end select
else
  print*,'NOT ASSOCIATED YET'
endif

end subroutine

END PROGRAM
