module m1
contains
subroutine sub1(bb)
integer :: bb(..)
write(14,*)lbound(bb),ubound(bb)
call sub12(bb)
rewind 14
read(14,*) k1,k2,k3,k4
if (k1/=1) print *,201,k1
if (k2/=1) print *,202,k2
if (k3/=2) print *,203,k3
if (k4/=-1) print *,204,k4
end subroutine
subroutine sub12(bb) bind(c)
integer :: bb(..)
write(15,*)lbound(bb),ubound(bb)
rewind 15
read(15,*) k1,k2,k3,k4
if (k1/=0) print *,1201,k1
if (k2/=0) print *,1202,k2
if (k3/=1) print *,1203,k3
if (k4/=-2) print *,1204,k4
end subroutine
end

use m1
integer :: aa(4)
call sub(aa,-2)
print*,"pass"
contains
subroutine sub(cc,k)
integer :: cc(2:3,k:*)
call sub1(cc)
end subroutine sub
end
