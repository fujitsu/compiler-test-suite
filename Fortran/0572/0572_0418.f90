module m1
type ty
integer,pointer :: aa(:,:)
end type ty
end module m1

module m2
use m1
type tty
type(ty) :: obj_ty
end type tty
end module m2

module m3
use m2
type(tty)::obj_tty
contains
subroutine sub(dmy)
integer :: dmy(..)
if(loc(dmy) .ne. loc(obj_tty%obj_ty%aa))print*,'103'
print*,"PASS"
end subroutine sub
end module m3

use m3
allocate(obj_tty%obj_ty%aa(3,4))
call sub1(obj_tty%obj_ty%aa)

contains
subroutine sub1(dmy1)
integer :: dmy1(:,:)
if(loc(obj_tty%obj_ty%aa) .ne. loc(dmy1))print*,'101'
call sub2(dmy1)
end subroutine sub1

subroutine sub2(dmy2)
integer :: dmy2(3,*)
if(loc(obj_tty%obj_ty%aa) .ne. loc(dmy2))print*,'102'
call sub(dmy2)
end subroutine sub2
end
