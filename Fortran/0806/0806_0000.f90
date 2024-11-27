module m1
contains
subroutine sub(cc,dd,ee) 
type(*):: cc(*)
type(*):: dd(*)
type(*):: ee(*)
if(any(lbound(cc) /= 1))print*,302
if(any(lbound(dd) /= 1))print*,302
if(any(lbound(ee) /= 1))print*,302
end subroutine sub
end

use m1
character(4) :: aa
call sub(aa,aa,aa)
print*,"pass"
end

