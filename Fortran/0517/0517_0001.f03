module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type,extends(x)::xx
  type(x):: xx1
end type
  contains
    subroutine fin(d)
    type(x)::d
  write(1,   '(a," ",z16.16)') 'fin:d   ',loc(d)
  write(1, '(a," ",z16.16)') 'fin:d%x1',loc(d%x1)
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
