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
   class(x0),intent(in)::b
   select type(b)
     type is(x)
       f=associated(a%p, b%p)
   end select
  end function
end
subroutine s1
use m1
type(x),target::a,b
logical::y
allocate(a%p)
allocate(b%p)
y=      f(a,b)
if (y) print *,10001
a%p=> b%p
y=f(a,b)
if (.not.y) print *,10003
end
call s1
print *,'pass'
end
