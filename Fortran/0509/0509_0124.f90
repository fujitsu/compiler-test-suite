module m0
interface
 function x2() result(r)
      integer::r
  end function
end interface
contains
 function px6() result(r)
   procedure (x2),pointer :: r
   r=>x2
 end function
end
module mod
use m0
   procedure (px6),pointer :: p
 contains
subroutine s(p)
   procedure (x2),pointer :: p
if (p()/=1)print *,3
end subroutine
end

subroutine s1
use mod
p=>px6
call s(p())
end 

call s1
print *,'pass'
end
 function x2() result(r)
      integer::r
      r=1
  end function
