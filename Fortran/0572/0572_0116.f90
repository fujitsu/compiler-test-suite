program main
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer, parameter :: pp1 = kind(findloc(arr,4,KIND = 4)) 
integer, parameter :: pp2 = kind(findloc(arr1,'B',KIND = 2))
integer, parameter :: pp3 = kind(findloc(arr2,4.4,KIND = 1)) 
integer, parameter :: pp4 = kind(findloc(arr4,(3,3),KIND = 2)) 
integer :: jj(1) = findloc(arr,4,KIND = 4)
integer :: kk(1) = findloc(arr1,'B',KIND = 2)
integer :: ll(1) = findloc(arr2,4.4,KIND = 1)
integer :: nn(1) = findloc(arr4,(3,3),KIND = 2)
if(jj(1) /= 2)print*, 101
if(kk(1) /= 2)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 2)print*, 105
if(pp1 /= 4)print*, 106
if(pp2 /= 2)print*, 107
if(pp3 /= 1)print*, 108
if(pp4 /= 2)print*, 110
print*, "pass"
end 