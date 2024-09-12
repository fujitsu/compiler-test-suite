module m1
type ty(k1)
integer, kind :: k1 
integer :: a
character (len =2), allocatable :: ch
character (len =2), pointer:: ptr =>NULL()
end type

type, extends(ty):: ty1
integer :: x
character (len =2):: ch1
type(ty(2)) ::ty_obj(2)
end type
end module

program main
use m1
type(ty1(2)) :: ty1_obj 
ty1_obj = ty1(2)(10,'Hi',NULL(),20,'Hi',[ty(2)(1,'ab'),ty(2)(2,'ab')])

if(ty1_obj%ty_obj(1)%ch .EQ. ty1_obj%ty_obj(2)%ch)then
print*,'PASS'
else
print*,'FAIL'
endif 
end program



