integer :: arr(3,4)

if(rank(arr(2,3)) /= 0) print*,"101"        
if(rank(arr(2,:)) /= 1) print*,"102"        
if(rank(arr(:,:)) /= 2) print*,"103"        

print*, "PASS"
end

