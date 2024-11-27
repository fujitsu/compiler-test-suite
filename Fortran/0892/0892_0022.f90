module m1
contains 
function s1()
integer :: s1 
s1= 10
block
integer :: var
var = 10
end block
end function
end module 

print*, "pass"
end

