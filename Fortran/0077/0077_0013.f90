module m1
type y
  complex,allocatable:: x1(:)
end type
complex,target:: a(-3:-1)=[11,12,13]
complex,target:: v(3)=-[2,1,3]
complex,target:: w(3)
complex::c=0
contains
subroutine s0
end subroutine
function f()
complex,pointer,contiguous::f(:)
f=>a
c=c+1
end function
end
subroutine s1
use m1
complex,allocatable:: x(:)
allocate (x , mold= f() )
if (any(lbound(x   )/=-3)) print *,111
if (any(ubound(x   )/=-1)) print *,112
end
subroutine s2
use m1
complex,allocatable:: x(:)
allocate (x , source= f() )
if (any(lbound(x   )/=-3)) print *,211
if (any(ubound(x   )/=-1)) print *,212
if ((x(-3)/=11       )) print *,2111
if ((x(-2)/=12       )) print *,2132
if ((x(-1)/=13       )) print *,2133
end
use m1
call s0
do k=1,20
call s1
call s2
if (c/=2) print *,301
c=0
end do
print *,'pass'
end


