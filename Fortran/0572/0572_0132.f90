program main
type ty
integer :: arr(3,4) = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
end type ty

type :: tty
logical :: arr3(3,4) = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
logical :: m1(3,4) = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])
end type tty

type(ty), parameter :: obj_ty = ty()
type(tty), parameter :: obj_tty = tty()

integer :: mm(3) = findloc(obj_tty%arr3(1:3,1:4),VALUE = obj_tty%arr3(2,1),DIM = obj_ty%arr(2,4),MASK = obj_tty%m1,KIND = 1,BACK = obj_tty%arr3(1,1))
if(mm(1) /= 3)print*, 112
if(mm(2) /= 3)print*, 113
if(mm(3) /= 3)print*, 114
print*, "pass"
end
