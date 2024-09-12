program main
block
integer, parameter :: arr(4) = [2,4,6,4]
character, parameter :: arr1(5) = ['A','B','B','C','D']
real, parameter :: arr2(5) = [2.2,3.3,4.4,5.5,4.4]
complex, parameter :: arr3(5) = [(2,3),(3,3),(4,4),(2,3),(3,3)]
integer :: jj= findloc(arr,4,1,BACK = .TRUE.)
integer :: kk = findloc(arr1,'B',1,BACK = .TRUE.)
integer :: ll = findloc(arr2,4.4,1,BACK = .TRUE.)
integer :: nn = findloc(arr3,(3,3),1,BACK = .TRUE.)
if(jj /= 4)print*, 101
if(kk /= 3)print*, 102
if(ll /= 5)print*, 103
if(nn /= 5)print*, 104
print*, "pass"
end block
end 
