module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
type xx
  class(x),allocatable:: v(:)
  type(y),allocatable:: yv(:)
  type(y),allocatable:: yy(:)
  type(y),allocatable:: zz(:)
  type(y)            :: yz(2:4)
end type
type(xx):: w
end
subroutine s1
use m1
allocate(w%yv(2:4))
w%yv= y( y1=2 , x1=1) 
w%v= w%yv(:)
if (any(ubound(w%v)/=3)) print *,901, ubound(w%v)
if (any(lbound(w%v)/=1)) print *,911, lbound(w%v)
if (any(ubound(w%yv)/=4)) print *,921, ubound(w%yv)
if (any(lbound(w%yv)/=2)) print *,931, lbound(w%yv)
end
call s1
print *,'pass'
end
