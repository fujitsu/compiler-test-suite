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
 subroutine   bug_routine(x) 
 use m1
 use d
   class(x0),intent(in)::x
   k=0
   select type(x)
    type is(x1)
   k=1
   end select
 if (k/=1) print *,2002
 end subroutine 
end
use m1
use m2
class(x1),allocatable:: v
allocate(v)
call bug_routine(v)

print *,'pass'
end
