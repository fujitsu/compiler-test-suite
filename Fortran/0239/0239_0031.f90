module m1
  integer::f1=0,f2=0
  type x
    integer,pointer::x1=>null()
    contains
     final::s
  end type
  contains
  subroutine s(xx)
   type(x)::xx
   if (associated(xx%x1))then
       deallocate(xx%x1)
       f2=f2+1
   endif
   f1=f1+1
  end subroutine
  subroutine ss(xx)
   type(x),allocatable,intent(out)::xx
   allocate(xx)
   allocate(xx%x1)
   xx%x1=10
  end subroutine
end
subroutine s1
use m1
type(x),allocatable::var
allocate(var)
call ss(var)
if (var%x1/=10) print *,101
deallocate(var)
end
use m1
call s1
if (f1/=2) print *,101,f1
if (f2/=1) print *,102,f2
print *,'pass'
end
   
  
