module m1
  type x0
    integer::x01=2
  end type
  type,extends(x0)::x1
    integer::x11=3
  end type
  type y0
    integer::y01
  end type
  type,extends(y0)::y1
    integer::y11=3
  end type
end 
subroutine s1
use m1
class(x0),allocatable:: xv
class(y0),allocatable:: yv
allocate(x1::xv)
  if (xv%x01/=2) print *,201
select type(xv)
type is(x1)
  if (xv%x11/=3) print *,211
end select

allocate(y1::yv)
select type(yv)
type is(y1)
  if (yv%y11/=3) print *,101
end select
end
call s1
print *,'pass'
end
