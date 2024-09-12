module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
module m2
contains
 subroutine bug_routine(x) 
use d
use m1
   class(x0),intent(in)::x
   type(x1)::y
   if (.not.same_type_as(y,x)) print *,1009
   if (.not.extends_type_of(y,x)) print *,1010
 end subroutine 
end
use m1
use m2
class(x1),allocatable:: v
allocate(v)
call bug_routine  (v )

print *,'pass'
end
