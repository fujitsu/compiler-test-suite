module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v(:)
  type(y),allocatable:: yv(:)
  type(y),allocatable:: yy(:)
  type(y),allocatable:: zz(:)
  type(y)            :: yz(2:4)
contains 
function f() result(r)
  type(y)            :: r(2:4)
r= y( y1=2 , x1=1) 
end function
end
subroutine s1
use m1
v= f()
if (any(ubound(v)/=4)) print *,901, ubound(v)
if (any(lbound(v)/=2)) print *,911, lbound(v)
end
call s1
print *,'pass'
end
