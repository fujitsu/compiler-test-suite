module m1
type y
  integer,allocatable:: x1(:)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
type(y),target:: w(3)
integer::c=0
contains
subroutine s0
allocate(w(3)%x1(-3:-1),source=a+20)
end subroutine
function f()
type(y),pointer::f
f=>w(3)
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x(2) , mold= f() )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x(2) , source= f() )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)%x1(-3)/=11       +20)) print *,2111
if ((x(1)%x1(-2)/=12       +20)) print *,2132
if ((x(1)%x1(-1)/=13       +20)) print *,2133
if ((x(2)%x1(-3)/=11       +20)) print *,3111
if ((x(2)%x1(-2)/=12       +20)) print *,3132
if ((x(2)%x1(-1)/=13       +20)) print *,3133
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


