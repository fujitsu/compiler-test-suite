module m1
contains
 subroutine s(p)
 integer,allocatable,intent(in),optional::p(:)
k=1
if (present(p))then 
if ( any(p(:)/=123)) print *,1001,p
if (lbound(p,1)/=2) print *,301
if (ubound(p,k)/=3) print *,311
call xx(p)
endif
end
 subroutine xx(p)
 integer,allocatable,intent(in),optional::p(:)
k=1
if ( any(p(:)/=123)) print *,5001,p
if ( any(p   /=123  )) print *,5001,p
if (lbound(p,1)/=2) print *,521
if (ubound(p,k)/=3) print *,521
end
end
use m1
integer,allocatable:: p(:)
allocate(p(2:3), source=123)
call s(p)
print *,'pass'
end 
