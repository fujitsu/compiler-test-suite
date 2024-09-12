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
w%v= w%yv
if (any(ubound(w%v)/=4)) print *,901, ubound(w%v)
if (any(lbound(w%v)/=2)) print *,911, lbound(w%v)
if (any(ubound(w%yv)/=4)) print *,921, ubound(w%yv)
if (any(lbound(w%yv)/=2)) print *,931, lbound(w%yv)
w%yy= w%yv
if (any(ubound(w%yy)/=4)) print *,801, ubound(w%yy)
if (any(lbound(w%yy)/=2)) print *,811, lbound(w%yy)
w%zz= w%yz
if (any(ubound(w%zz)/=4)) print *,701, ubound(w%zz)
if (any(lbound(w%zz)/=2)) print *,711, lbound(w%zz)
end
call s1
print *,'pass'
end
