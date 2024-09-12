module m0
contains
 function x2() result(r)
      integer::r
  r=1
  end function
end
module mod
use m0
   procedure (x2) :: p
 contains
subroutine s()
if (p()/=1)print *,3,p()
end subroutine
end

subroutine s1
use mod
if (p()/=1  ) print *,202,p()
call s
end 

call s1
print *,'pass'
end
 function p () result(r)
      integer::r
      r=1
  end function
