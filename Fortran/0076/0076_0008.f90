module m1
contains
 subroutine s(p)
 complex,pointer,intent(in),optional::p(:)
k=1
if (present(p))then 
p=(1,2)
if ( any(p(:)/=(1,2))) print *,1001,p
if (sum(p%im)/=4) print *,2001
if (lbound(p,1)/=1) print *,301
if (ubound(p,k)/=2) print *,311
endif
end
end
use m1
complex,pointer,contiguous:: p(:)
allocate( p(2), source=cmplx(0,0))
call s(p)
print *,'pass'
end 
