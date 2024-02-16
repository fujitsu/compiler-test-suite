program main
integer :: arr(4),jj,kk,ll,nn
character :: arr1(5)
real :: arr2(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
jj = findloc(arr,4,1,KIND = 2)
kk = findloc(arr1,'B',1,KIND = 4)
ll = findloc(arr2,4.4,1,KIND = 8)
nn = findloc(arr4,(3,3),1,KIND = 2)
if(jj /= 2)print*, 101
if(kind(findloc(arr,4,1,KIND =2)) /= 2)print*, 102
if(kk /= 2)print*, 103
if(kind(findloc(arr1,'B',1,KIND = 4)) /= 4)print*, 104
if(ll /= 3)print*, 105
if(kind(findloc(arr2,4.4,1,KIND = 8)) /= 8)print*, 106
if(nn /= 2)print*, 109
if(kind(findloc(arr4,(3,3),1,KIND = 2)) /= 2)print*, 110
print*, "pass"
end 
