module m1
integer,target::t(5)=1
contains
subroutine s(p)
integer,pointer,intent(out)::p(:)
p=>t
call sub(p)
end subroutine
end
use m1
integer,pointer::p(:)
call s(p)
if (t(1)/=2)print *,1,t(1)
if (t(2)/=2)print *,2,t(2)
if (t(3)/=2)print *,3,t(3)
if (t(4)/=2)print *,4,t(4)
if (t(5)/=2)print *,5,t(5)
print *,'pass'
end
subroutine sub(n)
integer n(5)
if (n(1)/=1)print *,3,n(1)
if (n(2)/=1)print *,3,n(1)
if (n(3)/=1)print *,3,n(1)
if (n(4)/=1)print *,3,n(1)
if (n(5)/=1)print *,3,n(1)
n=2
end

