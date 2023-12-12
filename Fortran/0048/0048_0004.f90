program main
type ty
integer,allocatable :: arr(:,:),mm(:)
end type ty

type :: tty
logical,allocatable :: arr3(:,:),m1(:,:)
end type tty

type(ty) :: obj_ty
type(tty) :: obj_tty

allocate(obj_ty%arr(3,4),obj_ty%mm(3))
allocate(obj_tty%arr3(3,4),obj_tty%m1(3,4))

obj_tty%m1 = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])

call sub(obj_ty%arr,obj_tty%arr3)

obj_ty%mm = findloc(obj_tty%arr3(1:3,1:4),VALUE = obj_tty%arr3(2,1),DIM = obj_ty%arr(2,4),MASK = obj_tty%m1,KIND = 1,BACK = obj_tty%arr3(1,1))
if(obj_ty%mm(1) /= 3)print*, 112
if(obj_ty%mm(2) /= 3)print*, 113
if(obj_ty%mm(3) /= 3)print*, 114
if(kind(findloc(obj_tty%arr3,VALUE = .FALSE.,DIM = 2,MASK = obj_tty%m1,KIND = 1,BACK = .TRUE.))/= 1)print*,122
print*, "pass"
contains 
subroutine sub(dmy1,dmy4)
integer :: dmy1(3,4)
logical :: dmy4(3,4)
dmy1 = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
dmy4 = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
end subroutine sub
end
