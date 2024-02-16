program main
integer :: arr(4),jj,kk,ll,nn
character :: arr1(5)
real :: arr2(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
jj = findloc(arr,4,1,KIND = 2,BACK = .TRUE.)
kk = findloc(arr1,'B',1,KIND = 4,BACK = .TRUE.)
ll = findloc(arr2,4.4,1,KIND = 1,BACK = .TRUE.)
nn = findloc(arr4,(3,3),1,KIND = 1,BACK = .TRUE.)
if(jj /= 4)print*, 101
if(kk /= 3)print*, 102
if(ll /= 5)print*, 103
if(nn /= 5)print*, 105
if(kind(findloc(arr,4,1,KIND = 2,BACK = .TRUE.)) /= 2)print*, 106
if(kind(findloc(arr1,'B',1,KIND = 4,BACK = .TRUE.)) /= 4)print*, 107
if(kind(findloc(arr2,4.4,1,KIND = 1,BACK = .TRUE.)) /= 1)print*, 108
if(kind(findloc(arr4,(3,3),1,KIND = 1,BACK = .TRUE.)) /= 1)print*, 110
print*, "pass"
end 
