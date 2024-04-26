module m1
contains
subroutine s(p)
integer,pointer,intent(in)::p(:)
p(1)=1
call sub(p(1))
if (p(1)/=2)print *,p(1)
end subroutine
end
use m1
integer,pointer::p(:)
allocate(p(2))
call s(p)
print *,'pass'
end
subroutine sub(n)
n=2
end

