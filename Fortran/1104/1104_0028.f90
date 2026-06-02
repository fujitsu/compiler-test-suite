module m1
  type y
    integer,allocatable::y1
  end type
  type,extends(y)::yy
    integer,allocatable::y4
  end type
  type x
    integer,allocatable::x1
    class(y),allocatable::x3(:)
  end type
  type (x),allocatable::var1,var2
  contains
  subroutine s
    allocate(var2, source=var1)
  end
end
use m1
allocate(var1)
k=0
  allocate(var1%x1,source=1)
  allocate(yy::var1%x3(3))
  do n=1,3
  select type(a1=>var1%x3(n))
    type is(yy)
      allocate(a1%y1,source=11)
      allocate(a1%y4,source=14)
      k=k+1
  end select
  end do
if (k/=3) print *,1001
call s
k=0
  var1%x1=-1
  do n=1,3
  select type(a1=>var1%x3(2))
    type is(yy)
      a1%y1=-11
      a1%y4=-14
      k=k+1
  end select
  end do
if (k/=3) print *,1002
k=0
  if (var2%x1/=1) print *,2001
  if (.not.allocated(var2%x3)) print *,2003
  do n=1,3
  select type(a1=>var2%x3(n))
    type is(yy)
      if (a1%y1/=11) print *,2004
      if (a1%y4/=14) print *,2005
      k=k+1
  end select
  end do
if (k/=3) print *,1003
print *,'sngg604p : pass'
end
