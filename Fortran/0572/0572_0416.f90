type ty
integer,allocatable :: aa(:,:)
end type ty
type tty
type(ty) :: obj_ty
end type tty
type(tty) :: obj_tty
allocate(obj_tty%obj_ty%aa(3,3))
call sub1(obj_tty%obj_ty%aa)

contains
subroutine sub1(dmy)
integer :: dmy(3,*)
if(loc(obj_tty%obj_ty%aa) .ne. loc(dmy))print*,'101'
call sub2(dmy)
end subroutine sub1

subroutine sub2(dmy1)
integer :: dmy1(..)
if(loc(obj_tty%obj_ty%aa) .ne. loc(dmy1))print*,'102'
print*,'PASS'
end subroutine sub2
end
