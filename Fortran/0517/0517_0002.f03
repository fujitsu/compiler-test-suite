module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
    end subroutine
    function f() result(r)
     type(x)::r
     r=x(1)
    end function
end
use m1
type(x),allocatable::a
allocate(a)
a=f()
if (a%x1/=1) print *,200
print *,'pass'
end
