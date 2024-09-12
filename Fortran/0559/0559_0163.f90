module mod1
type ty1(k1,k2)
  integer,kind::k1,k2
end type
private ty1
end module

module mod2
use mod1
type ty1(k1,k2)
  integer,kind::k1,k2
end type
type (ty1(4,2)) :: obj1
private ty1
end module

program main
use mod2


if (obj1%k2 == 2)then
 print *,'PASS'
else
 print*,"ERROR"
endif
end program
