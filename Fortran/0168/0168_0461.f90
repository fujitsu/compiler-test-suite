program main
integer :: arr(4),jj,k=1
arr = [2,4,6,8]
jj = maxloc(arr,k)
if(jj /= 4)print*, 101
jj = findloc(arr,4,1)
if(jj /= 2)print*, 102
print*, "pass"
end 
