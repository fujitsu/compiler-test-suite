module m1
contains
 subroutine s(p)
 integer,allocatable,intent(in),optional::p(:)
k=1
if (allocated(p))then 
if ( any(p(:)/=123)) print *,1001,p
if (lbound(p,1)/=2) print *,301
if (ubound(p,k)/=3) print *,311
call xx()
endif
contains
 subroutine xx()
k=1
if ( any(p(:)/=123)) print *,5001,p
if ( any(p   /=123  )) print *,5001,p
if (lbound(p,1)/=2) print *,521
if (ubound(p,k)/=3) print *,521
end
end
end
use m1
integer,allocatable:: p(:)
call ss(p)
print *,'pass'
contains
subroutine ss(p)
integer,allocatable:: p(:)
call s(p)
end
end 
