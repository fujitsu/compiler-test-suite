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
subroutine s2
use m1
type(y),allocatable:: x
allocate (x , source= f() )
end
use m1
call s0
call s2
if (c/=1) print *,301
print *,'pass'
end


