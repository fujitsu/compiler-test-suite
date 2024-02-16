module m1
contains
 subroutine s(p)
 integer,pointer,intent(in),optional::p(:)
k=1
if (present(p))then 
if ( any(p(:)/=123)) print *,1001,p
if (lbound(p,1)/=2) print *,301
if (ubound(p,k)/=3) print *,311
p=200
if ( any(p(:)/=200  )) print *,2001,p
if ( any(p   /=200  )) print *,2002,p
if (lbound(p,1)/=2) print *,321
if (ubound(p,k)/=3) print *,321
call xx(p)
endif
end
 subroutine xx(p)
 integer,pointer,intent(in),optional::p(:)
k=1
if ( any(p(:)/=200)) print *,5001,p
if ( any(p   /=200  )) print *,5001,p
if (lbound(p,1)/=2) print *,521
if (ubound(p,k)/=3) print *,521
end
end
use m1
integer,pointer,contiguous:: p(:)
allocate(p(2:3), source=123)
call s(p)
print *,'pass'
end 
