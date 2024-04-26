program main
integer :: arr(3,4),jj(4),kk(3),ll(4),nn(4)

character :: arr1(3,4)
real :: arr2(3,4)

complex :: arr4(3,4)
arr = reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
arr1 = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
arr2 = reshape([2.2,3.3,4.4,5.5,4.4,3.3,2.2,1.1,6.6,7.7,8.8,9.9],[3,4])

arr4 = reshape([(2,3),(3,3),(4,4),(2,3),(3,3),(2,2),(1,1),(6,3),(2,3),(3,3),(1,1),(7,7)],[3,4])
jj = findloc(arr,4,1,KIND = 2)
kk = findloc(arr1,'B',2,KIND = 4)
ll = findloc(arr2,4.4,1,KIND = 8)

nn = findloc(arr4,(3,3),1,KIND = 2)

if(jj(1) /= 0)print*, 101
if(jj(2) /= 2)print*, 102
if(jj(3) /= 0)print*, 103
if(jj(4) /= 0)print*, 104
if(kk(1) /= 4)print*, 105
if(kk(2) /= 1)print*, 106
if(kk(3) /= 1)print*, 107
if(ll(1) /= 3)print*, 108
if(ll(2) /= 2)print*, 109
if(ll(3) /= 0)print*, 111
if(ll(4) /= 0)print*, 112
if(nn(1) /= 2)print*, 116
if(nn(2) /= 2)print*, 117
if(nn(3) /= 0)print*, 118
if(nn(4) /= 1)print*, 119
if(kind(findloc(arr,4,1,KIND = 2)) /= 2)print*, 120
if(kind(findloc(arr1,'B',2,KIND = 4)) /= 4)print*, 121
if(kind(findloc(arr2,4.4,1,KIND = 8)) /= 8)print*, 122
if(kind(findloc(arr4,(3,3),1,KIND = 2)) /= 2)print*, 123
print*, "pass"
end 
