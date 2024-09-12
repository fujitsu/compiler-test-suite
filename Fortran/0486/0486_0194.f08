module m1
interface r
  procedure r1,r2,r3
end interface
contains
subroutine s1
real(4),parameter::x=1.0,g=0.157
real(4):: x1=x,g1=g
real(8):: x2=x,g2=g
real(16):: x3=x,g3=g
intrinsic :: erfc
if (r(erfc(x1),g1)/=0) print *,101
if (r(erfc(x2),g2)/=0) print *,102
if (r(erfc(x3),g3)/=0) print *,103
end subroutine
subroutine sx(proc,x,y)
procedure (exp),pointer:: proc
real(4),intent(in):: x,y
if (proc(x)/=y) print *,501
end subroutine
function r1(x,y) result(r)
integer::r
real(4),intent(in):: x,y
r=0
if (abs(x-y)>0.1) r=1
end function
function r2(x,y) result(r)
integer::r
real(8),intent(in):: x,y
r=0
if (abs(x-y)>0.1) r=1
end function
function r3(x,y) result(r)
integer::r
real(16),intent(in):: x,y
r=0
if (abs(x-y)>0.1) r=1
end function
end
use m1
call s1
print *,'pass'
end
