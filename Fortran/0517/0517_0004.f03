module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
    end subroutine
    function f() result(r)
     type(xx)::r
      allocate(r%x1,source=1)
    end function
end
use m1
type(xx),allocatable::a
a=f()
if (a%x1/=1) print *,200
print *,'pass'
end