program main
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj(2) = findloc(arr,4,1)
integer :: kk(2) = findloc(arr1,'B',1)
integer :: ll(2) = findloc(arr2,4.4,1)
integer :: nn(2) = findloc(arr4,(3,3),1)
if(jj(1) /= 2)print*, 101
if(kk(1) /= 2)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 2)print*, 105
if(jj(2) /= 2)print*, 106
if(kk(2) /= 2)print*, 107
if(ll(2) /= 3)print*, 108
if(nn(2) /= 2)print*, 110
print*, "pass"
end 
