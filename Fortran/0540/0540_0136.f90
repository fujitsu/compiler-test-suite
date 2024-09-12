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
class(x1),pointer:: d
end subroutine
end
use d_mod
use m1
class(x1),pointer:: v1
allocate(v1)
call chk( v1 )

print *,'pass'
end
