module m1
contains
subroutine sub(ee,k1,k2,k3,cc) 
type(*):: cc(*),ee(*)
if(any(lbound(cc) /= 1))print*,302
if(any(lbound(ee) /= 1))print*,303
if (k1/=1) print *,101
if (k2/=1) print *,101
if (k3/=1) print *,101
end subroutine sub
end

use m1
character(4) :: aa
call sub(aa,1,1,1,aa)
print*,"pass"
end

