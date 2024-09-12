module m1
procedure(dim) :: pp

interface gnr
 procedure :: pp
end interface

type gnr
 integer :: i
end type

end module

use m1
if(int(gnr(2.3,4.2))/=6) print*,101
print*,"pass"
end

function pp(d1,d2)
 real :: pp,d1,d2
 pp=d1+d2
end function

