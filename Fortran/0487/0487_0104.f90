program main
integer :: kk(4)
character :: arr1(3,4)
arr1 = reshape(['A','B','B','C','D','E','G','F','H','B','D','C'],[3,4])
kk = findloc(arr1,'B',1,KIND = 4,BACK = .TRUE.)
if(kk(1) /= 3)print*, 105
if(kk(2) /= 0)print*, 106
if(kk(3) /= 0)print*, 107
if(kk(4) /= 1)print*, 108
print*, "pass"
end 
