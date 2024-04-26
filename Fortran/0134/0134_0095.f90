module m1
contains
subroutine z(p)
procedure(real),pointer::p
if (abs(p()-1)>0.0001)print *,'error'
end subroutine
subroutine s1(f)
external::f
pointer::f
if (abs(f()-1)>0.0001)print *,'error-2'
call z(f)
end subroutine
subroutine s2(f)
external::f,x
pointer::f
f=>x
call z(f)
end subroutine
end
function x()
x=1.0
end
subroutine ss1
use m1
procedure(),pointer::f
external::x
f=>x
call s1(f)
end
subroutine ss2
use m1
procedure(),pointer::f
call s2(f)
end
call ss1
call ss2
print *,'pass'
end
