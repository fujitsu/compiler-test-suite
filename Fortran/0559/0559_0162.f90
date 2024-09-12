module mod1
type ty1(k1,k2)
  integer,kind::k1,k2
  integer :: arr(k1+k2)
end type
private :: ty1
type(ty1(2, 5))::ty1_obj
type(ty1(2, 6))::ty2_obj

contains
function fun()
integer :: fun
fun = sizeof(ty1_obj%arr)
end function
end module

module mod2
use mod1
type ty1(k1,k2)
  integer,kind::k1,k2
  integer :: arr(k1+k2)
end type
type(ty1(2, 5))::ty3_obj
type(ty1(2, 6))::ty4_obj

contains
function fun_mod2()
integer :: fun_mod2
fun_mod2 = sizeof(ty4_obj%arr)
end function
end module

program main
use mod2
if(fun() .eq.28 .and. fun_mod2() .eq. 32)then
print*,"PASS"
else
print*,"ERROR"
endif
end program
