module m1
  type z
    integer,allocatable::z1
    class(*),allocatable::z2
    class(*),allocatable::z3
  end type
  type,extends(z)::zz
    integer,allocatable::z4
    class(*),allocatable::z5
    class(*),allocatable::z6
  end type
  type y
    integer,allocatable::y1
    class(z),allocatable::y2
    class(z),allocatable::y3
  end type
  type,extends(y)::yy
    integer,allocatable::y4
    class(z),allocatable::y5
    class(z),allocatable::y6
  end type
  type x
    integer,allocatable::x1
    class(y),allocatable::x2
    class(y),allocatable::x3
  end type
  type,extends(x)::xx
    integer,allocatable::x4
    class(y),allocatable::x5
    class(y),allocatable::x6
  end type
  class(x),allocatable::var1,var2
  contains
  subroutine s
    allocate(var2, source=var1)
  end
end
use m1
allocate(xx::var1)
k=0
select type(var1)
type is(xx)
  allocate(var1%x1,source=1)
  allocate(yy::var1%x3)
  select type(a1=>var1%x3)
    type is(yy)
      allocate(a1%y1,source=11)
      allocate(a1%y4,source=14)
      k=k+1
  end select
  allocate(var1%x4,source=3)
  allocate(yy::var1%x6)
  select type(a1=>var1%x6)
    type is(yy)
      allocate(a1%y1,source=11)
      allocate(a1%y4,source=14)
      k=k+1
  end select
end select
if (k/=2) print *,1001
call s
k=0
select type(var1)
type is(xx)
  var1%x1=-1
  select type(a1=>var1%x3)
    type is(yy)
      a1%y1=-11
      a1%y4=-14
      k=k+1
  end select
  var1%x4=-3
  select type(a1=>var1%x6)
    type is(yy)
      a1%y1=-11
      a1%y4=-14
      k=k+1
  end select
end select
if (k/=2) print *,1002
k=0
select type(var2)
type is(xx)
  if (var2%x1/=1) print *,2001
  if (allocated(var2%x2)) print *,2002
  if (.not.allocated(var2%x3)) print *,2003
  select type(a1=>var2%x3)
    type is(yy)
      if (a1%y1/=11) print *,2004
      if (a1%y4/=14) print *,2005
      k=k+1
  end select
  if (var2%x4/=3) print *,2006
  if (allocated(var2%x5)) print *,2007
  if (.not.allocated(var2%x6)) print *,2008
  select type(a1=>var2%x6)
    type is(yy)
      if (a1%y1/=11) print *,2009
      if (a1%y4/=14) print *,2010
      k=k+1
  end select
end select
if (k/=2) print *,1003
print *,'sngg584p : pass'
end
