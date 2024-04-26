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
  print*,'pass'
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
  print*,101
else
endif

allocate(ptr, mold = dum)
ptr%real1=5.345

if(ALLOCATED(ptr)) then
select type(a=>ptr)
type is(deriv)
  if(int(ptr%real1)/=5) print*,102
end select
else
  print*,'NOT ALLOCATED YET'
endif

end subroutine

END PROGRAM
