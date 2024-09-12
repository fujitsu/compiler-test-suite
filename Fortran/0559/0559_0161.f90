module mod1
type ty1(k1,k2)
  integer,kind::k1,k2
end type
private ty1
end module

module mod3
use mod1
type ty1(k1,k2)
  integer,kind::k1,k2
end type
type(ty1(2, 5))::ty1_obj
end module

program main
use mod3

if(ty1_obj%k1 == 2 .and. ty1_obj%k2 == 5)then
print*,"PASS"
else
print*,"ERROR"
endif
end program
