module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
contains
 subroutine  chk(x)
   class(x0),intent(in)::x
   select type(x)
    type is(x1)
    class default
      print *,'error-1'
   end select
 end subroutine 
end

module d_mod
contains 
subroutine s1(d)
use m1
class(x1),allocatable:: d
end subroutine
end

module m2
contains
subroutine s0(v2)
use d_mod
use m1
class(x1),allocatable:: v1,v2
allocate(v1)
call chk( v1 )
if (.not.same_type_as(v1,v2)) print *,'error-2'
select type(v2)
 type is(x1)
 class default
   print *,'error-3'
end select

v2=v1
call chk( v2 )

end subroutine 
subroutine ss
use m1
class(x1),allocatable:: v2
allocate(v2)
call s0(v2)
end subroutine 
end

use m2
call ss

print *,'pass'
end
