program main
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
logical, parameter :: m1(5) = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
complex, parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj(1) = findloc(arr,4,1,MASK = m1(1:4),BACK = .TRUE.)
integer :: kk(1) = findloc(arr1,'B',1,MASK = m1,BACK = .TRUE.)
integer :: ll(1) = findloc(arr2,4.4,1,MASK = m1,BACK = .TRUE.)
integer :: nn(1) = findloc(arr4,(3,3),1,MASK = m1,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
if(kk(1) /= 3)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 0)print*, 105
print*, "pass"
end 
