module m1
type y
  integer:: x1(-3:-1)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(2)=[1,2]
type(y),target:: w(3)
integer::c=2
type q
integer:: dummy
type(y)::f
end type
type (q)::g(2)
contains
subroutine s0
w(1)%x1=a
w(3)%x1=a+20
end subroutine
subroutine z()
g(1)%f=w(1)
g(2)%f=w(3)
end subroutine
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x , mold= g%f )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x , source= g%f )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)%x1(-3)/=11       )) print *,21119
if ((x(1)%x1(-2)/=12       )) print *,21329
if ((x(1)%x1(-1)/=13       )) print *,21330
if ((x(2)%x1(-3)/=11       +20)) print *,31119
if ((x(2)%x1(-2)/=12       +20)) print *,31329
if ((x(2)%x1(-1)/=13       +20)) print *,31338
end
subroutine s11
use m1
type(y),allocatable:: x(:)
allocate (x , mold= g%f )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s21
use m1
type(y),allocatable:: x(:)
allocate (x , source= g%f )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)%x1(-3)/=11       )) print *,21118
if ((x(1)%x1(-2)/=12       )) print *,21328
if ((x(1)%x1(-1)/=13       )) print *,21338
if ((x(2)%x1(-3)/=11       +20)) print *,31118
if ((x(2)%x1(-2)/=12       +20)) print *,31328
if ((x(2)%x1(-1)/=13       +20)) print *,31338
end
subroutine s12
use m1
type(y),allocatable:: x(:)
allocate (x , mold= g(v)%f )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s22
use m1
type(y),allocatable:: x(:)
allocate (x , source= g(v)%f )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if ((x(1)%x1(-3)/=11       )) print *,21117
if ((x(1)%x1(-2)/=12       )) print *,21327
if ((x(1)%x1(-1)/=13       )) print *,21337
if ((x(2)%x1(-3)/=11       +20)) print *,31117
if ((x(2)%x1(-2)/=12       +20)) print *,31327
if ((x(2)%x1(-1)/=13       +20)) print *,31337
end
use m1
call s0
call z
do k=1,1
call s1
call s2
call s11
call s21
call s12
call s22
end do
print *,'pass'
end
