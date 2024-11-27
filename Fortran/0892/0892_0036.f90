module m1
contains 
function s1()
integer :: s1 
s1= 10
block
integer :: var
end block
end function
end module 
use m1
print*, "pass"
end

