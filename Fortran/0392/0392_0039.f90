module m1
contains
function ifun(a)
integer,optional::a(:)
if (present(a)) print *,101
ifun=0
end function
end
subroutine s1
use m1
integer,pointer::x(:)
integer,allocatable::y(:)
if (ifun(null())/=0) print *,201
if (ifun(null(x))/=0) print *,202
if (ifun(null(y))/=0) print *,203
end
call s1
print *,'pass'
end
