module m1
integer :: x = 1
contains
end module
program pro
use m1
if(x /=1) print *,101
print *,"Pass"
contains
end
