module m1
type y
  complex,allocatable:: x1(:)
end type
complex,target:: a(-3:-1)=[11,12,13]
complex,target:: v(3)=-[2,1,3]
complex,target:: w(3)
complex::c=0
type q
complex,pointer::f
end type
type(q)::g
contains
subroutine s0
end subroutine
subroutine z()
g%f=>a(-3)
c=c+1
end subroutine 
end
subroutine s1
use m1
complex,allocatable:: x(:)
allocate (x(2) , mold= g%f )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
complex,allocatable:: x(:)
allocate (x(2) , source=g%f  )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)/=11       )) print *,2111
if ((x(2)/=11       )) print *,2133
end
use m1
call s0
call z
do k=1,20
call s1
call s2
c=0
end do
print *,'pass'
end


