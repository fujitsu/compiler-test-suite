program main
integer :: arr(4),jj,kk,ll,nn
character :: arr1(5)
real :: arr2(5)
logical :: m1(5)
complex :: arr4(5)
arr = [1,4,8,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
m1 = [.True.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
jj = findloc(arr(1:4),arr(4),arr(1),m1(1:4),8,BACK = m1(1))
kk = findloc(arr1(1:5),arr1(2),arr(1),m1,KIND = 2,BACK = m1(1))
ll = findloc((arr2(1:5)),arr2(5),arr(1),MASK = m1,KIND = 4,BACK = m1(1))
nn = findloc(arr4(1:5),VALUE = arr4(2),DIM = arr(1),MASK = m1,KIND = 4,BACK = m1(1))
if(jj /= 4)print*, 101
if(kind(findloc(arr,4,1,MASK = m1(1:4),KIND = 8,BACK = .TRUE.)) /= 8)print*,102
if(kk /= 3)print*, 103
if(kind(findloc(arr1,'B',1,MASK = m1,KIND = 2,BACK = .TRUE.))/= 2)print*,104
if(ll /= 3)print*, 105
if(kind(findloc(arr2,4.4,1,MASK = m1,KIND = 4,BACK = .TRUE.)) /= 4)print*,106
if(nn/= 0)print*, 109 ,nn
if(kind(findloc(arr4,(3,3),1,MASK = m1,KIND = 4,BACK = .TRUE.)) /= 4)print*,110
print*, "pass"
end 
