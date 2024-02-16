module m1
type x
  integer:: x1
end type
contains
 subroutine s(p)
 type(x),pointer,intent(in),optional::p(:)
k=1
if (present(p))then 
p=x(1)
if ( any(p(:)%x1/=1)) print *,1001,p
if (sum(p%x1)/=2) print *,2001
if (lbound(p,1)/=1) print *,301
if (ubound(p,k)/=2) print *,311
endif
end
end
use m1
type(x),pointer,contiguous:: p(:)
allocate( p(2), source=x(0))
call s(p)
print *,'pass'
end 
