module m1
integer:: n=0,n2=0
intrinsic abs
contains
subroutine s1(p,p2,p3)
procedure(integer*8),pointer,intent(in)::p
procedure(integer*2),pointer,intent(in)::p2
procedure(real*8),pointer,intent(in)::p3
n2 = p()
n2 = p2()
n2 = p3()
if (n2/=8) print *,201
end subroutine
end

use m1
procedure(integer*8):: e8
procedure(integer*2):: e2
procedure(real*8):: er8
call s1(e8,e2,er8)
if (n/=18) print *,101
print *,'PASS'
end

function e8()
use m1
integer*8:: e8
e8 = 8
n= e8
end

function e2()
use m1
integer*2:: e2
e2 = 2
n= n+e2
end

function er8()
use m1
real*8:: er8
er8 = 8
n= n+er8
end
