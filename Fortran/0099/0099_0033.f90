program main
type ty
integer,allocatable :: arr(:,:),jj(:),kk(:),ll(:),mm(:),nn(:)
character,allocatable :: arr1(:,:)
end type ty

type :: tty
type(ty),allocatable :: obj_ty(:)
real,allocatable :: arr2(:,:)
logical,allocatable :: arr3(:,:),m1(:,:)
complex,allocatable :: arr4(:,:)
end type tty

type(tty),allocatable :: obj_tty
allocate(obj_tty)
allocate(obj_tty%obj_ty(1))
allocate(obj_tty%obj_ty(1)%arr(3,4),obj_tty%obj_ty(1)%jj(4),obj_tty%obj_ty(1)%kk(4),obj_tty%obj_ty(1)%ll(3),obj_tty%obj_ty(1)%mm(3),obj_tty%obj_ty(1)%nn(4),obj_tty%obj_ty(1)%arr1(3,4))
allocate(obj_tty%arr2(3:5,4:7),obj_tty%arr3(3,4),obj_tty%m1(3,4),obj_tty%arr4(3,4))

obj_tty%m1 = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])

call sub(obj_tty%obj_ty(1)%arr,obj_tty%obj_ty(1)%arr1,obj_tty%arr2,obj_tty%arr3,obj_tty%arr4)

obj_tty%obj_ty(1)%jj = findloc(obj_tty%obj_ty(1)%arr(1:3,1:4),obj_tty%obj_ty(1)%arr(1,3),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 8,BACK = obj_tty%arr3(1,1))
obj_tty%obj_ty(1)%kk = findloc(obj_tty%obj_ty(1)%arr1(1:3,1:4),obj_tty%obj_ty(1)%arr1(2,1),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 4,BACK = obj_tty%arr3(1,1))
obj_tty%obj_ty(1)%ll = findloc(obj_tty%arr2(3:5,4:7),obj_tty%arr2(4,5),obj_tty%obj_ty(1)%arr(2,4),MASK = obj_tty%m1,KIND = 2,BACK = obj_tty%arr3(1,1))
obj_tty%obj_ty(1)%nn = findloc(obj_tty%arr4(1:3,1:4),obj_tty%arr4(1,4),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 2,BACK = obj_tty%arr3(1,1))
if(obj_tty%obj_ty(1)%jj(1) /= 0)print*, 101
if(obj_tty%obj_ty(1)%jj(2) /= 0)print*, 102
if(obj_tty%obj_ty(1)%jj(3) /= 1)print*, 103
if(obj_tty%obj_ty(1)%jj(4) /= 3)print*, 104
if(obj_tty%obj_ty(1)%kk(1) /= 0)print*, 105
if(obj_tty%obj_ty(1)%kk(2) /= 0)print*, 106
if(obj_tty%obj_ty(1)%kk(3) /= 0)print*, 107
if(obj_tty%obj_ty(1)%kk(4) /= 1)print*, 108
if(obj_tty%obj_ty(1)%ll(1) /= 0)print*, 109
if(obj_tty%obj_ty(1)%ll(2) /= 2)print*, 110
if(obj_tty%obj_ty(1)%ll(3) /= 0)print*, 111
if(obj_tty%obj_ty(1)%nn(1) /= 0)print*, 115
if(obj_tty%obj_ty(1)%nn(2) /= 2)print*, 116
if(obj_tty%obj_ty(1)%nn(3) /= 0)print*, 117
if(obj_tty%obj_ty(1)%nn(4) /= 1)print*, 118
if(kind(findloc(obj_tty%obj_ty(1)%arr,7,1,MASK = obj_tty%m1,KIND = 8,BACK = .TRUE.)) /= 8)print*,119
if(kind(findloc(obj_tty%obj_ty(1)%arr1,'B',1,MASK = obj_tty%m1,KIND = 4,BACK = .TRUE.))/= 4)print*,120
if(kind(findloc(obj_tty%arr2,4.4,2,MASK = obj_tty%m1,KIND = 2,BACK = .TRUE.)) /= 2)print*,121
if(kind(findloc(obj_tty%arr4,(3,3),1,MASK = obj_tty%m1,KIND = 2,BACK = .TRUE.))/= 2)print*,123
print*, "pass"
contains 
subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5)
integer :: dmy1(3,4)
character :: dmy2(3,4)
real :: dmy3(3,4)
logical :: dmy4(3,4)
complex :: dmy5(3,4)
dmy1 = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
dmy2 = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
dmy3 = reshape([2.2,3.3,4.4,5.5,4.4,3.3,2.2,1.1,6.6,7.7,8.8,9.9],[3,4])
dmy4 = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
dmy5 = reshape([(2,3),(3,3),(4,4),(2,3),(3,3),(2,2),(1,1),(6,3),(2,3),(3,3),(1,1),(7,7)],[3,4])
end subroutine sub
end 
    
    
