module m1
type y
  integer,allocatable:: x1(:)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
type(y),target:: w(3)
integer::c=0,n=1
type q
type(y),pointer::f(:)
end type
type(q)::g
contains
subroutine s0
allocate(w(1)%x1(-3:-1),source=a)
allocate(w(3)%x1(-3:-1),source=a+20)
end subroutine
subroutine z()
g%f=>w(:)
c=c+1
end subroutine
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x , mold= g%f(1:3:2) )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x , source= g%f(1:3:2) )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)%x1(-3)/=11       )) print *,2111
if ((x(1)%x1(-2)/=12       )) print *,2132
if ((x(1)%x1(-1)/=13       )) print *,2133
if ((x(2)%x1(-3)/=11       +20)) print *,3111
if ((x(2)%x1(-2)/=12       +20)) print *,3132
if ((x(2)%x1(-1)/=13       +20)) print *,3133
end
use m1
call s0
call z
do k=1,20
call s1
call s2
end do
print *,'pass'
end
