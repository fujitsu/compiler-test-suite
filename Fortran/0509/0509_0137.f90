module m0
interface
 function x2() result(r)
      integer::r
  end function
end interface
contains
 function y1() result(r)
      character::r
    r='a'
  end function
end
module mod
use m0
type x
   procedure (y1),nopass,pointer :: p
end type
type(x)::v
 contains
subroutine s()
   procedure (x2),pointer :: p
if (p()/=1)print *,3
end subroutine
end

subroutine s1
use mod
v%p=>y1
if (v%p()/='a') print *,202
end 

call s1
print *,'pass'
end
 function x2() result(r)
      integer::r
      r=1
  end function
