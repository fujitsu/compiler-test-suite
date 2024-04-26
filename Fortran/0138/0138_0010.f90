module m1
contains
function ifun(a)
integer,optional::a(2)
if (present(a)) print *,101
ifun=0
end function
end
subroutine s1
use m1
integer,pointer::xx(:,:)
if (ifun(null(xx))/=0) print *,204
end
call s1
print *,'pass'
end
