program main
Intrinsic::FINDLOC
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex,parameter :: arr4(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer, parameter :: pp1 = kind(findloc(arr,4,1,KIND =2))
integer, parameter :: pp2 =kind(findloc(arr1,'B',1,KIND = 4)) 
integer, parameter :: pp3 =kind(findloc(arr2,4.4,1,KIND = 8))
integer, parameter :: pp4 =kind(findloc(arr4,(3,3),1,KIND = 2)) 
integer :: jj = findloc(arr,4,1,KIND = 2)
integer :: kk = findloc(arr1,'B',1,KIND = 4)
integer :: ll = findloc(arr2,4.4,1,KIND = 8)
integer :: nn = findloc(arr4,(3,3),1,KIND = 2)
if(jj /= 2)print*, 101
if(pp1 /= 2)print*, 102
if(kk /= 2)print*, 103
if(pp2 /= 4)print*, 104
if(ll /= 3)print*, 105
if(pp3 /= 8)print*, 106
if(nn /= 2)print*, 109
if(pp4 /= 2)print*, 110
print*, "pass"
end 
