Module op
real, private :: a
contains
function kol()
kol=a+4
end function
subroutine set
a=10
end subroutine
end module
program main
use op,only:kol,set
real :: a
a=100
call set
if (kol()/=14) print *,201
if (a/=100) print *,101
print *,'pass'
end
