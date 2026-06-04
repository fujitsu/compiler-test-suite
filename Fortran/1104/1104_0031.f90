module m1
  type y
    integer,allocatable::y1(:)
  end type
  type,extends(y)::yy
    integer,allocatable::y4
  end type
  type x
    integer,allocatable::x1
    class(y),allocatable::x3(:)
  end type
  type (x)::var1(3),var2(3)
  contains
  subroutine s
    var2=var1
  end
end
use m1
  do m=1,3
k=0
  allocate(var1(m)%x1,source=1)
  allocate(yy::var1(m)%x3(3))
  do n=1,3
  select type(a1=>var1(m)%x3)
    type is(yy)
      allocate(a1(n)%y1,source=[11,11,11])
      allocate(a1(n)%y4,source=14)
      k=k+1
  end select
  end do
if (k/=3) print *,1001
  end do
call s
  do m=1,3
k=0
  var1(m)%x1=-1
  do n=1,3
  select type(a1=>var1(m)%x3)
    type is(yy)
      a1(n)%y1=-11
      a1(n)%y4=-14
      k=k+1
  end select
  end do
if (k/=3) print *,1002
k=0
  if (var2(m)%x1/=1) print *,2001
  if (.not.allocated(var2(m)%x3)) print *,2003
  do n=1,3
  select type(a1=>var2(m)%x3)
    type is(yy)
      if (any(a1(n)%y1/=11)) print *,2004
      if (a1(n)%y4/=14) print *,2005
      k=k+1
  end select
  end do
if (k/=3) print *,1003
  end do
print *,'sngg607p : pass'
end
