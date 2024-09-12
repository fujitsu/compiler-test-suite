module m1
integer,allocatable:: a(:)
contains
subroutine s1()
dimension array01( f() )
if (size(array01)/=1) print *,101
end subroutine
recursive pure function f() result(r)
integer:: r
r=1
end function
end
use m1
call s1
print *,'pass'
end
