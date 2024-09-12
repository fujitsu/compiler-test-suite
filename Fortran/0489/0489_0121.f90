Module op
real, private :: a=0
contains
function kol()
kol=a+4
end function
end module
program main
use op,only:kol
real :: a
a=100
if (kol()/=4) print *,201
if (a/=100) print *,101
print *,'pass'
end

