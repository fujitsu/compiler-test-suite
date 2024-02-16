program main
integer :: arr(3,4),jj(4),kk(4),ll(3),nn(4)
character :: arr1(3,4)
real :: arr2(3:5,4:7)
logical :: arr3(3,4),m1(3,4)
complex :: arr4(3,4)
m1 = reshape([.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.],[3,4])
call sub(arr,arr1,arr2,arr3,arr4)
jj = findloc(arr(1:3,1:4),arr(1,3),arr(3,1),MASK = m1,KIND = 8,BACK = arr3(1,1))
kk = findloc(arr1(1:3,1:4),arr1(2,1),arr(3,1),MASK = m1,KIND = 4,BACK = arr3(1,1))
ll = findloc(arr2(3:5,4:7),arr2(4,5),arr(2,4),MASK = m1,KIND = 2,BACK = arr3(1,1))
nn = findloc(arr4(1:3,1:4),arr4(1,4),arr(3,1),MASK = m1,KIND = 2,BACK = arr3(1,1))
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
if(kind(findloc(arr,7,1,MASK = m1,KIND = 8,BACK = .TRUE.)) /= 8)print*,119
if(kind(findloc(arr1,'B',1,MASK = m1,KIND = 4,BACK = .TRUE.))/= 4)print*,120
if(kind(findloc(arr2,4.4,2,MASK = m1,KIND = 2,BACK = .TRUE.)) /= 2)print*,121
if(kind(findloc(arr4,(3,3),1,MASK = m1,KIND = 2,BACK = .TRUE.))/= 2)print*,123
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
    
    
