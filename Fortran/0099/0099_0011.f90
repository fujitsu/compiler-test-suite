program main
integer :: arr(4),jj,kk,ll,nn
character :: arr1(5)
real :: arr2(5)
logical::m1(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
m1 = [.TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.]
jj = findloc(arr,4,1,m1(1:4))
kk = findloc(arr1,'B',1,m1)
ll = findloc(arr2,4.4,1,m1)
nn = findloc(arr4,(3,3),1,MASK = m1)
if(jj /= 4)print*, 101
if(kk /= 3)print*, 102
if(ll /= 3)print*, 103
if(nn /= 0)print*, 105
print*, "pass"
end 
