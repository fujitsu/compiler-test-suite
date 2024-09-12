integer :: a

if(rank(a) /= 0) print*,"101"
if(rank(10) /= 0) print*,"102"
if(rank('hello') /= 0) print*,"103"
if(rank(10.5) /= 0) print*,"104"
if(rank((10.0,5.0)) /= 0) print*,"105"

print*,"PASS"
end

