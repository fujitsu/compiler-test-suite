 module m1
  type,abstract::x0
    private
  end type
  type,extends(x0):: x
    integer(8)::x1
    class(x),pointer::p 
  end type
  contains
  logical function f(a,b)
   class(x),intent(in)::a
   class(x),intent(in)::b
       f=associated(a%p, b%p)
  end function
end
subroutine s1
use m1
type(x),target::a,b
logical::y
allocate(b%p)
a%p=> b%p
y=f(a,b)
if (.not.y) print *,10003
end
call s1
print *,'pass'
end
