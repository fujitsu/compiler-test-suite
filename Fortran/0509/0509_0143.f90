module m0
interface
 function x2(i) result(p)
      character(2),pointer::p
  end function
end interface
end
module mod
use m0
   procedure (px6),pointer :: w
 contains
subroutine s(p)
   procedure (x2),pointer :: p
if (p(2)/='12')print *,3
end subroutine
 function px6() result(p)
   procedure (x2),pointer :: p
   p=>x2
 end function
end

subroutine s1
use mod
w=>px6
call s(w())
end 

call s1
print *,'pass'
end
 function x2(i) result(r)
      character(2),pointer::r
      allocate(r)
      r(:i)='12'
  end function
