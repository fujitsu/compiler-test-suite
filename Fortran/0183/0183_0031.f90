module m1
type y
  integer,allocatable:: x1(:)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
type(y),target:: w
integer::c=0
contains
subroutine s0
allocate(w%x1(-3:-1),source=1)
end subroutine
function f()
type(y),pointer::f
f=>w
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x(:)
allocate (x(3:5) , mold= f() )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
if (any(lbound(x   )/=3)) print *,111
if (any(ubound(x   )/=5)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:)
allocate (x(3:5) , source= f() )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(lbound(x   )/=3)) print *,211
if (any(ubound(x   )/=5)) print *,212
if (any(x(3)%x1(-3:-1)/=1        )) print *,2131
if (any(x(4)%x1(-3:-1)/=1        )) print *,2132
if (any(x(5)%x1(-3:-1)/=1        )) print *,2133
end
use m1
call s0
call s1
call s2
if (c/=2) print *,301
print *,'pass'
end


