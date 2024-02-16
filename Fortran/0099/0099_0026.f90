program main
integer :: arr(4),jj(1),kk(1),ll(1),nn(1)
character :: arr1(5)
real :: arr2(5)
logical :: m1(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
m1 = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.]
jj = findloc(arr,4,m1(1:4),2,.TRUE.)
kk = findloc(arr1,'B',m1,4,.TRUE.)
ll = findloc(arr2,4.4,m1,1,.TRUE.)
nn = findloc(arr4,(3,3),MASK = m1,KIND = 2,BACK = .TRUE.)
if(jj(1) /= 4)print*, 101
if(kk(1) /= 3)print*, 102
if(ll(1) /= 5)print*, 103
if(nn(1) /= 5)print*, 105
if(kind(findloc(arr,4,MASK = m1(1:4),KIND = 2,BACK = .TRUE.)) /= 2)print*, 106
if(kind(findloc(arr1,'B',MASK = m1,KIND = 4,BACK = .TRUE.)) /= 4)print*, 107
if(kind(findloc(arr2,4.4,MASK = m1,KIND = 1,BACK = .TRUE.)) /= 1)print*, 108
if(kind(findloc(arr4,(3,3),MASK = m1,KIND = 2,BACK = .TRUE.)) /= 2)print*, 110
print*, "pass"
end 
