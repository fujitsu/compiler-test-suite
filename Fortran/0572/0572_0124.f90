program main
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical , parameter:: m1(5) = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer, parameter :: pp1 = kind(findloc(arr,4,MASK = m1(1:4),KIND = 2,BACK = .TRUE.))
integer, parameter :: pp2 = kind(findloc(arr1,'B',MASK = m1,KIND = 4,BACK = .TRUE.)) 
integer, parameter :: pp3 = kind(findloc(arr2,4.4,MASK = m1,KIND = 1,BACK = .TRUE.)) 
integer, parameter :: pp4 = kind(findloc(arr4,(3,3),MASK = m1,KIND = 2,BACK = .TRUE.))
integer :: jj(1) = findloc(arr,4,m1(1:4),2,.TRUE.)
integer :: kk(1) = findloc(arr1,'B',m1,4,.TRUE.)
integer :: ll(1) = findloc(arr2,4.4,m1,1,.TRUE.)
integer :: nn(1) = findloc(arr4,(3,3),MASK = m1,KIND = 2,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
if(kk(1) /= 3)print*, 102
if(ll(1) /= 5)print*, 103
if(nn(1) /= 5)print*, 105
if(pp1 /= 2)print*, 106
if(pp2 /= 4)print*, 107
if(pp3 /= 1)print*, 108
if(pp4 /= 2)print*, 110
print*, "pass"
end 
