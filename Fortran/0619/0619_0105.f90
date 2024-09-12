module m1
 type x
   integer     ,pointer::p3(:)
   character(1)::xx
 end type
type (x),pointer:: w8(:)
 contains
subroutine s1()
!
allocate(w8(2:3))
w8(3)%xx='z'
!
allocate( w8(3)%p3(2:25) )
w8(3)%p3(2)=2 
w8(3)%p3(:)=1 
if (    w8(3)%xx/='z')print *,008304
if (any(lbound(w8(3)%p3)/=2))print *,008301
if (any(w8(3)%p3/=1  ))print *,008302
end subroutine
end

use m1
call       s1()
print *,'pass'
end
