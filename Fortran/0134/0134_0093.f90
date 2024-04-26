module m1
integer,target::t(5)=1
contains
subroutine s(p)
integer,pointer,intent(out)::p(:)
p=>t
call sub(p)
end subroutine
subroutine sub(n)
integer,pointer,intent(out)::n(:)
allocate (n(5))
n=2
end subroutine
end
use m1
integer,pointer::p(:)
call s(p)
if (p(1)/=2)print *,1,t(1)
if (p(2)/=2)print *,2,t(2)
if (p(3)/=2)print *,3,t(3)
if (p(4)/=2)print *,4,t(4)
if (p(5)/=2)print *,5,t(5)
print *,'pass'
end

