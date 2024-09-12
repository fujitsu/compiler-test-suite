module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v(:)
  type(y),allocatable:: xv(:)
  type(y),allocatable:: yv(:)
end

subroutine s1
use m1
allocate(yv(2:4))
allocate(xv(-2:-1))
yv= y( y1=2 , x1=1)
if (any(ubound(yv)/=4)) print *,821, ubound(yv)
if (any(lbound(yv)/=2)) print *,831, lbound(yv)
v= fun()
if (any(ubound(v)/=4)) print *,901, ubound(v), ubound(fun())
if (any(lbound(v)/=2)) print *,911, lbound(v), lbound(fun())

contains
function fun()
  type(y),allocatable :: fun(:)
  allocate(y::fun(2:4))
end function
end

call s1
print *,'PASS'
end
