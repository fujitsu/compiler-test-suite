module m1
private
procedure(mf) :: kgnr

contains
function    mf(d)
    integer,value :: d
    print*,d,"function   mf"
mf=d+1
end function
end module

use m1
integer :: xx = 2
if  (kgnr(xx)/=2) print *,101  
print *,'pass'
end

function   kgnr(d)
integer :: d,kgnr
    kgnr=d
end 
