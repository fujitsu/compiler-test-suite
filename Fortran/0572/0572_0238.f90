module m1
type ty
integer,allocatable :: aa(:,:)
end type ty
type tty
type(ty) :: obj_ty
end type tty
type(tty) :: obj_tty
end module m1

use m1

allocate(obj_tty%obj_ty%aa(3,3))
call sub(obj_tty%obj_ty%aa)

contains
subroutine sub(dmy)
use m1
type(*) :: dmy(..)
if(loc(obj_tty%obj_ty%aa) .ne. loc(dmy))print*,'101'
print*,"PASS"
end subroutine sub
end
