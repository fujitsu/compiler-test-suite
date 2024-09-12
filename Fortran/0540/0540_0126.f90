module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
   type(x1)::y
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
   class(x0),allocatable::v
allocate(x1::v)
   if (.not.same_type_as(y,v)) print *,1009
   if (.not.extends_type_of(y,v)) print *,1010
 end subroutine 
end
use m2
call bug_routine  

print *,'pass'
end
