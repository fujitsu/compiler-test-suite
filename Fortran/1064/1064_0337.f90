module m1
integer,allocatable:: a(:)
contains
subroutine s1()
dimension array01( f( allocated( a ) ) )
if (size(array01)/=1) print *,101
end subroutine
pure function f(n) result(r)
integer:: r
logical,intent(in):: n
r=100
if (.not.n) r=1
end function
end
use m1
call s1
print *,'pass'
end
