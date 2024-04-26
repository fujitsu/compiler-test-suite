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
type(y),allocatable::f
allocate(f)
f=w
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x
allocate (x , mold= f() )
if (any(lbound(a(v))/=1)) print *,101
if (any(ubound(a(v))/=3)) print *,102
end
subroutine s2
use m1
type(y),allocatable:: x
allocate (x , source= f() )
if (any(lbound(a(v))/=1)) print *,201
if (any(ubound(a(v))/=3)) print *,202
if (any(x%x1/=1        )) print *,213
end
use m1
call s0
call s1
call s2
if (c/=2) print *,301
print *,'pass'
end


