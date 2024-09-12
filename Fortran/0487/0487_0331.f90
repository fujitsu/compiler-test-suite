module m1
integer:: n=0
contains
subroutine s1(p)
procedure(e),pointer,intent(in)::p
call p
end subroutine
subroutine e
n=n+1
end subroutine
end
use m1
call s1(e)
if (n/=1) print *,101
print *,'pass'
end
