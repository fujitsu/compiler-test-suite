MODULE MOD1
IMPLICIT NONE
type ty(x,k)
  integer,kind :: x
  integer,kind:: k
  integer :: var = 2+k
  integer :: a(4)=8
  character(len = k+1)::ch="abc"
  character::arr(k) = "abc"
end type
type ty2(y)
  integer,kind :: y
  type(ty(2,4)) :: cmp
end type
type(ty2(5)) :: obj
END MODULE
PROGRAM MAIN
USE MOD1
IMPLICIT NONE
if(obj%cmp%var .eq. 6 .and. all(obj%cmp%a .eq. 8))then
 print*,"PASS"
else
 print*,"ERROR"
endif
END PROGRAM
