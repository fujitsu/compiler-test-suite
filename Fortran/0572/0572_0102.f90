module mod
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj(1) = findloc(arr,4)
integer :: kk(1) = findloc(arr1,'B')
integer :: ll(1) = findloc(arr2,4.4)


end module mod

program main
use mod
integer :: nn(1) = findloc(arr4,(3,3))
if(jj(1) /= 2)print*, 101
if(kk(1) /= 2)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 2)print*, 105
print*, "pass"
end 
