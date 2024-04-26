module m1
contains
subroutine s03()
external::f,x
pointer::f
f=>x
if (abs(f()-1)>0.0001)print *,'error-23'
call z(f)
end subroutine

subroutine z(p)
procedure(real),pointer::p
if (abs(p()-1)>0.0001)print *,'error'
end subroutine
end
function x()
x=1.0
end
use m1
call s03()
print *,'pass'
end
