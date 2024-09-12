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
  v= yv
  if (any(ubound(v)/=4)) print *,901, ubound(v)
  if (any(lbound(v)/=2)) print *,911, lbound(v)
  if (any(ubound(yv)/=4)) print *,921, ubound(yv)
  if (any(lbound(yv)/=2)) print *,931, lbound(yv)
  xv= yv
  if (any(ubound(xv)/=4)) print *,701, ubound(v)
  if (any(lbound(xv)/=2)) print *,711, lbound(v)
  if (any(ubound(yv)/=4)) print *,721, ubound(yv)
  if (any(lbound(yv)/=2)) print *,731, lbound(yv)
  end
  call s1
  print *,'PASS'
  end
