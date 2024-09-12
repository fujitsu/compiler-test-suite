program main
integer, parameter :: arr(4) = [1,4,8,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical, parameter :: m1(5) = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj(1) = findloc((/1,4,8,4/),arr(4),arr(1),MASK = m1(1:4),KIND = 8,BACK = m1(1))
integer :: kk(1) = findloc(reshape(['A','B','B','C','D'],[5]),arr1(2),arr(1),MASK = m1,KIND = 2,BACK = m1(1))
integer :: ll(1) = findloc((arr2(1:5)),arr2(5),arr(1),MASK = m1,KIND = 4,BACK = m1(1))
integer :: nn(1) = findloc(arr4(1:5),arr4(2),arr(1),MASK = m1,KIND = 4,BACK = m1(1))
if(jj(1) /= 4)print*, 101
if(kk(1) /= 3)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 0)print*, 104
print*, "pass"
end 
