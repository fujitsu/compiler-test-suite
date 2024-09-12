module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
   class(x0),allocatable::v
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
module m2
use d
use m1
contains
 subroutine bug_routine 
   type(x1)::y
   if (.not.same_type_as(y,v)) print *,1009
   if (.not.extends_type_of(y,v)) print *,1010
 end subroutine 
end
use m1
use m2
allocate(x1::v)
call bug_routine  

print *,'pass'
end
