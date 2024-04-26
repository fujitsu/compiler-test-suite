module m1
  integer::f1=0,f2=0
  type x
    integer::x1=1
    contains
     final::s
  end type
  contains
  subroutine s(xx)
   type(x)::xx
   if (xx%x1/=1) print *,101
  end subroutine
  subroutine ss(xx)
   type(x),allocatable,intent(out)::xx
   allocate(xx)
  end subroutine
end
subroutine s1
use m1
type(x),allocatable::var
call ss(var)
if (var%x1/=1) print *,102
deallocate(var)
end
use m1
call s1
print *,'pass'
end
   
  
