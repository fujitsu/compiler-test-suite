module m1
contains
subroutine s(p)
integer,pointer,intent(in)::p(:)
call sub(p)
end subroutine
end
use m1
integer,target::t(5)=1
integer,pointer::p(:)
p=>t(1:5:2)
call s(p)
if (t(1)/=2)print *,1,t(1)
if (t(2)/=1)print *,2,t(2)
if (t(3)/=2)print *,3,t(3)
if (t(4)/=1)print *,4,t(4)
if (t(5)/=2)print *,5,t(5)
print *,'pass'
end
subroutine sub(n)
integer n(3)
if (n(1)/=1)print *,3,n(1)
if (n(2)/=1)print *,3,n(1)
if (n(3)/=1)print *,3,n(1)
n=2
end

