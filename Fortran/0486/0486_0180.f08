module m1
contains
subroutine sub(cc) bind(c)
type(*):: cc(*)
if(any(lbound(cc) /= 1))print*,302
end subroutine sub
end

use m1
character(4) :: aa
call sub(aa)
print*,"pass"
end
