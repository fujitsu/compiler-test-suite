module m1
contains
subroutine sub(ee,k1,k2,k3,cc) 
type(*):: cc(*),ee(*)
end subroutine sub
end

use m1
character(4) :: aa
call sub(aa,1,1,1,aa)
print*,"pass"
end

