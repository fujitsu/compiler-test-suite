program main
type ty
integer :: arr(3,4) = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
character :: arr1(3,4) = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
end type ty

type :: tty
type(ty) :: obj_ty(1)= ty()
real :: arr2(3:5,4:7) = reshape([2.2,3.3,4.4,5.5,4.4,3.3,2.2,1.1,6.6,7.7,8.8,9.9],[3,4])
logical :: arr3(3,4) = reshape([.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.],[3,4])
logical ::m1(3,4) = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])
complex :: arr4(3,4) = reshape([(2,3),(3,3),(4,4),(2,3),(3,3),(2,2),(1,1),(6,3),(2,3),(3,3),(1,1),(7,7)],[3,4])
end type tty



type(tty),parameter  :: obj_tty = tty()



integer, parameter :: jj(4) = findloc(obj_tty%obj_ty(1)%arr(1:3,1:4),obj_tty%obj_ty(1)%arr(1,3),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 8,BACK = obj_tty%arr3(1,1))
integer, parameter :: kk(4) = findloc(obj_tty%obj_ty(1)%arr1(1:3,1:4),obj_tty%obj_ty(1)%arr1(2,1),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 4,BACK = obj_tty%arr3(1,1))
integer, parameter :: ll(3) = findloc(obj_tty%arr2(3:5,4:7),obj_tty%arr2(4,5),obj_tty%obj_ty(1)%arr(2,4),MASK = obj_tty%m1,KIND = 2,BACK = obj_tty%arr3(1,1))
integer, parameter :: nn(4) = findloc(obj_tty%arr4(1:3,1:4),obj_tty%arr4(1,4),obj_tty%obj_ty(1)%arr(3,1),MASK = obj_tty%m1,KIND = 2,BACK = obj_tty%arr3(1,1))
integer, parameter :: pp1 = kind(findloc(obj_tty%obj_ty(1)%arr,7,1,MASK = obj_tty%m1,KIND = 8,BACK = .TRUE.))
integer, parameter :: pp2 = kind(findloc(obj_tty%obj_ty(1)%arr1,'B',1,MASK = obj_tty%m1,KIND = 4,BACK = .TRUE.))
integer, parameter :: pp3 = kind(findloc(obj_tty%arr2,4.4,2,MASK = obj_tty%m1,KIND = 2,BACK = .TRUE.)) 
integer, parameter :: pp4 = kind(findloc(obj_tty%arr4,(3,3),1,MASK = obj_tty%m1,KIND = 2,BACK = .TRUE.))
if(jj(1) /= 0)print*, 101
if(jj(2) /= 0)print*, 102
if(jj(3) /= 1)print*, 103
if(jj(4) /= 3)print*, 104
if(kk(1) /= 0)print*, 105
if(kk(2) /= 0)print*, 106
if(kk(3) /= 0)print*, 107
if(kk(4) /= 1)print*, 108
if(ll(1) /= 0)print*, 109
if(ll(2) /= 2)print*, 110
if(ll(3) /= 0)print*, 111
if(nn(1) /= 0)print*, 115
if(nn(2) /= 2)print*, 116
if(nn(3) /= 0)print*, 117
if(nn(4) /= 1)print*, 118
if(pp1 /= 8)print*,119
if(pp2 /= 4)print*,120
if(pp3 /= 2)print*,121
if(pp4 /= 2)print*,123
print*, "pass"
end 
    
    
