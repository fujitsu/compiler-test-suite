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
   procedure (y1),pointer :: p
 contains
subroutine s()
end subroutine
end

subroutine s1
use mod
p=>y1
if (p()/='a') print *,202
end 

call s1
print *,'pass'
end
 function x2() result(r)
      integer::r
      r=1
  end function