module mod1
implicit none
type ty0(k1)
  integer,kind :: k1
  integer(kind= k1) :: i1(k1)
end type
type,extends(ty0) :: ty1(k2)
  integer,kind :: k2
  integer(k2) :: i2
  type(ty0(k2+2))::cmp
end type

type(ty1(2,2)),target :: tgt
end module
program main
use mod1
implicit none
tgt%i1 = 10
tgt%cmp%i1 = 5
if((tgt%i1(1) .eq. 10) .and. (tgt%cmp%i1(1) .eq. 5)) then
 print*,"PASS"
else
 print*,"FAIL"
endif
end
