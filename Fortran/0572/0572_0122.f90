program main
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj(1) = findloc(arr,4,KIND = 2,BACK = .TRUE.)
integer :: kk(1) = findloc(arr1,'B',KIND = 1,BACK = .TRUE.)
integer :: ll(1) = findloc(arr2,4.4,KIND = 4,BACK = .TRUE.)
integer ::nn(1) = findloc(arr4,(3,3),KIND = 1,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
if(kk(1) /= 3)print*, 102
if(ll(1) /= 5)print*, 103
if(nn(1) /= 5)print*, 105
print*, "pass"
end 
