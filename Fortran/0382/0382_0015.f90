module m1
contains
subroutine s1
integer ::a1(2:3)=(/11,12/)
call s(a1,1)
call s(a1+a1,2)
end subroutine
subroutine s(a1,k)
integer:: a1(:)
if (any(shape(a1)/=[2]))print *,401
if (any(lbound(a1)/=[1]))print *,402,lbound(a1)
if (any(ubound(a1)/=[2]))print *,403,ubound(a1)
if (size(a1)/=2)print *,404
if (sizeof(a1)/=2*4)print *,405
if (any(a1/=[11,12]*k))print *,406,a1(1),a1(2)
end subroutine
end
use  m1
call s1
print *,'pass'
end
