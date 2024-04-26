module m1
type y
  integer,allocatable:: x1(:)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
type(y),target:: w(3)
integer::c=0
type(y),contiguous,pointer::f(:)
contains
subroutine s0
allocate(w(1)%x1(-3:-1),source=1)
allocate(w(3)%x1(-3:-1),source=3)
f=>w
end subroutine
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x , mold= f )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=3)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x , source= f )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=3)) print *,212
if (any(x(1)%x1/=1        )) print *,213
if (any(x(3)%x1/=3        )) print *,214
end
use m1
call s0
call s1
call s2
print *,'pass'
end


