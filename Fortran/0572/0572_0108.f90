module mod
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical, parameter::m1(5) = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]

end module mod

program main
use mod
integer :: jj = findloc(arr,4,1,m1(1:4))
integer :: kk = findloc(arr1,'B',1,m1)
integer :: ll = findloc(arr2,4.4,1,m1)
integer :: nn = findloc(arr4,(3,3),1,MASK = m1)
if(jj /= 4)print*, 101
if(kk /= 3)print*, 102
if(ll /= 3)print*, 103
if(nn /= 0)print*, 105
print*, "pass"
end 
