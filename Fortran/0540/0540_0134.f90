module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
  private
  public::x1,sub,v 
class(x1),allocatable:: v
contains
 subroutine   sub() 
   class(x1),allocatable:: var
   allocate(var)
   select type(v)
    type is(x1)
    class default
     print *,'error-1'
   end select
 end subroutine 
end
module d
contains 
subroutine s1(d1)
use m1
class(x1),allocatable:: d1
end subroutine
end
use d
use m1
allocate(v)
call sub  ( )

print *,'pass'
end
