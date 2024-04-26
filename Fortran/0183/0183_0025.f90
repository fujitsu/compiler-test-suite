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
allocate(w(1)%x1(-3:-1),source=1)
allocate(w(3)%x1(-3:-1),source=3)
end subroutine
function f()
type(y),pointer::f(:)
f=>w(::2)
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x , mold= f() )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=2)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x , source= f() )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=2)) print *,212
if (any(x(1)%x1/=1        )) print *,213
if (any(x(2)%x1/=3        )) print *,214
end
use m1
call s0
call s1
call s2
print *,'pass'
end


