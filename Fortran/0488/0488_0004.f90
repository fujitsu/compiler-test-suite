module m1
contains
subroutine s01(x,k1,k2)
integer,pointer:: x(:,:)
 if (any(lbound(x)/=[-2,-3])) print *,101,lbound(x),k1
if (rank(x)/=k2) prINT *,111,RANK(X),K2
end subroutine
subroutine s02(x,k1,k2)
integer,pointer:: x(:,:)
contiguous::x
 if (any(lbound(x)/=[-2,-3])) print *,201,lbound(x),k1
if (rank(x)/=k2) prINT *,211,RANK(X),K2
end subroutine
end
use m1
integer,dimension(-2:-1,-3:-1),target:: x=1
integer,pointer::p(:,:)
contiguous::p
p=> x
if (any(lbound(p(:,-2))/=1)) print *,901
call s01(p,-2,2)
call s02(p,-2,2)
print *,'pass'
end

