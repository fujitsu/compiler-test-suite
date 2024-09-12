 module m1
  type x
    integer(8)::x1
    type(x),pointer::p 
  end type
  contains
  logical function f(a,b)
   type(x)::a,b
   f=associated(a%p, b%p)
  end function
end
subroutine s1
use m1
type(x),target::a,b
allocate(a%p)
allocate(b%p)
if (f(a,b)) print *,1001
a%p=> b%p
if (.not.f(a,b)) print *,10012
end
call s1
print *,'pass'
end
