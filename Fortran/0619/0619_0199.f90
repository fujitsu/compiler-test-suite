module m1
integer,private::x=1
contains
subroutine s1
end subroutine
end
module m2
use m1
contains
subroutine s2
end subroutine
end
use m1
use m2
call s1
call s2

print *,'pass'
end
