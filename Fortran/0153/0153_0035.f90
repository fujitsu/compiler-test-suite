module m1
private
procedure(mf),public :: gnr

contains
function    mf(d)
    integer :: d
    print*,d,"function   mf"
mf=d+1
end function
end module

use m1
implicit none
integer :: xx = 2
if  (gnr(xx)/=2) print *,101
print *,'pass'
end

function   gnr(d)
integer :: d,gnr
    gnr=d
end 
