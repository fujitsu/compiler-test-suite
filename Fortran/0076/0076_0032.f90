module m1
contains
 subroutine s(p)
 integer,allocatable,intent(in),optional::p(:)
k=1
if (present(p))then 
if ( any(p(:)/=1)) print *,1001,p
if (sum(p)/=2) print *,2001
if (lbound(p,1)/=1) print *,301
if (ubound(p,k)/=2) print *,311
endif
end
end
use m1
integer,allocatable:: p(:)
allocate( p(2), source=0)
p=1
call s(p)
print *,'pass'
end 
