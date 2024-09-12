module m1
type ty(k1)
integer , KIND :: k1
integer(k1) :: i = 0
end type

type, extends(ty) :: ty1(k2)
integer , KIND :: k2
integer(k1) :: ii =0
integer(k2) :: jj =0
type(ty(k2))::ty_obj
endtype
type(ty1(2,4)),SAVE ::ty1_obj
end module

program main
use m1
call sub(ty1_obj)
contains
subroutine sub(ty1_obj)
type(ty1(2,4)) ::ty1_obj

ty1_obj = ty1(2,4)(10,20,30,ty(4)(10))
if(ty1_obj%k2 .EQ. ty1_obj%ty_obj%k1)then
print*,'PASS'
else
print*,'FAIL'
endif
end subroutine
end program



