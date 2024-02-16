program main
integer :: arr(4),jj(2),kk(2),ll(2),nn(2)
character :: arr1(5)
real :: arr2(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
jj = findloc(arr,4,1)
kk = findloc(arr1,'B',1)
ll = findloc(arr2,4.4,1)
nn = findloc(arr4,(3,3),1)
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
