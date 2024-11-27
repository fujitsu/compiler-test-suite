module m1
contains
subroutine sub(k1,k2,k3,cc) 
type(*):: cc(*)
if(any(lbound(cc) /= 1))print*,302
if (k1/=1) print *,101
if (k2/=1) print *,101
if (k3/=1) print *,101
end subroutine sub
end

use m1
character(4) :: aa
call sub(1,1,1,aa)
print*,"pass"
end

