module m1
contains 
subroutine s1()

block
integer :: var 
end block
end subroutine
end module 

use m1
print*, "pass"
end

