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
end
subroutine s1
use m1
allocate(yv(2:4))
yv%y1=2
yv%x1=1
v= yv
if (any(ubound(v)/=4)) print *,901, ubound(v)
if (any(lbound(v)/=2)) print *,911, lbound(v)
if (any(ubound(yv)/=4)) print *,921, ubound(yv)
if (any(lbound(yv)/=2)) print *,931, lbound(yv)
yy= yv
if (any(ubound(yy)/=4)) print *,801, ubound(yy)
if (any(lbound(yy)/=2)) print *,811, lbound(yy)
end
call s1
print *,'pass'
end

