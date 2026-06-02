module m1
procedure(dim) :: pp

interface gnr
 procedure :: pp
end interface
end module

module m2
use m1,gg=>gnr

interface 
 integer function ff(d)
    character :: d
 end function
end interface

procedure(ff) :: gg

interface gg
    procedure :: gg
end interface
end module

use m2,gf=>gg
if(gf('d')/=1) print*,101
if(int(gf(2.3,4.2))/=6) print*,102
print*,"pass"
end

function pp(d1,d2)
 real :: pp,d1,d2
 pp=d1+d2
end function

integer function gg(d)
    character :: d
    gg=len(d)
end function
