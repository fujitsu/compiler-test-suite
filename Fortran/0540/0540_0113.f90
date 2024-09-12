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
module nnn
contains
 subroutine bug_routine  
 use d
 use m1,only:x0,x1
 class(x1),allocatable:: v
 allocate(v)
 call confirm_routine  (v )
 end subroutine 
 subroutine confirm_routine(x) 
   use m1
   class(x0),intent(in)::x
   k=0
   select type(x)
    type is(x1)
   k=1
   end select
if (k/=1) print *,2002
end subroutine 
end

use nnn
call bug_routine

print *,'pass'
end
