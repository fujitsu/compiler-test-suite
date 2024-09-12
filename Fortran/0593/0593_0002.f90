module m1
  type x
    integer:: x1
  end type
  type,extends(x):: y
     integer:: y1
  end type
  class(x),allocatable:: v(:)
  class(x),allocatable:: zy(:)
  type(y),allocatable:: xv(:)
  type(y),allocatable:: q(:)
  type(y):: yv(2:4)

  type z
  class(x),allocatable:: r(:)
   type(y):: xz(2:4)
  end type
end
subroutine s1
use m1
type(z)::obj
allocate(xv(-2:-1))
allocate(q(-4:-1))

yv = y( y1=2 , x1=1)
if (any(ubound(yv)/=4)) print *,821, ubound(yv)
if (any(lbound(yv)/=2)) print *,831, lbound(yv)

v = yv(2:4)
if (any(ubound(v)/= ubound(yv(2:4)))) print *,901, ubound(v)
if (any(lbound(v)/= lbound(yv(2:4)))) print *,902, lbound(v)
select type(v)
 class is(y)
  if (v(1)%y1 /= 2) print *,903
  if (v(1)%x1 /= 1) print *,904
 class default
  print*, "911"
end select

zy = yv
if (any(ubound(zy)/= ubound(yv))) print *,201, ubound(zy)
if (any(lbound(zy)/= lbound(yv))) print *,202, lbound(zy)
select type(zy)
 class is(y)
  if (zy(4)%y1 /= 2) print *,203,zy(4)%y1
  if (zy(4)%x1 /= 1) print *,204,zy(4)%x1
 class default
  print*, "911"
end select

obj%r = obj%xz(2:4)
if (any(ubound(obj%r)/= ubound(obj%xz(2:4)))) print *,501, ubound(obj%r)
if (any(lbound(obj%r)/= lbound(obj%xz(2:4)))) print *,502, lbound(obj%r)

xv = yv(2:4)
if (any(ubound(xv)/= ubound(yv(2:4)))) print *,101, ubound(xv)
if (any(lbound(xv)/= lbound(yv(2:4)))) print *,102, lbound(xv)

q = obj%xz
if (any(ubound(q)/= ubound(obj%xz))) print *,301, ubound(q)
if (any(lbound(q)/= lbound(obj%xz))) print *,302, lbound(q)
end
call s1
print *,'PASS'
end
