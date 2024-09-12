module m1
  type x0
    integer::x01
  end type
  type,extends(x0)::x1
    integer::x11
  end type
type z
class(x1),allocatable:: d
end type
contains
 subroutine  chk(x)
type(z)::x
   select type(p=>x%d)
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
type(z)::d
end subroutine
end

module m2
contains
subroutine s0(v2)
use d_mod
use m1
type(z)::v1,v2
allocate(v1%d)
call chk( v1 )
if (.not.same_type_as(v1%d,v2%d)) print *,'error-2'
select type(p=>v2%d)
 type is(x1)
 class default
   print *,'error-3'
end select
end subroutine 
subroutine ss
use m1
type(z)::v2
allocate(v2%d)
call s0(v2)
end subroutine 
end

use m2
call ss

print *,'pass'
end
