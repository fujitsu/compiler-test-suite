module m1
contains
subroutine sub2(bb) bind(c)
integer :: bb(..)
write(12,*)lbound(bb),ubound(bb)
call sub11(bb)
rewind 12
read(12,*) k1,k2,k3,k4
if (k1/=0) print *,221,k1
if (k2/=0) print *,222,k2
if (k3/=1) print *,223,k3
if (k4/=-2) print *,224,k4
end subroutine
subroutine sub11(bb)
integer :: bb(..)
write(13,*)lbound(bb),ubound(bb)
rewind 13
read(13,*) k1,k2,k3,k4
if (k1/=0) print *,11201,k1
if (k2/=0) print *,11202,k2
if (k3/=1) print *,11203,k3
if (k4/=-2) print *,11204,k4
end subroutine
end

use m1
integer :: aa(4)
call sub(aa,-2)
print*,"pass"
contains
subroutine sub(cc,k)
integer :: cc(2:3,k:*)
call sub2(cc)
end subroutine sub
end
