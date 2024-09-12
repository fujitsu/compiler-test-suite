module m0
interface
 function x2() result(r)
      integer::r
  end function
end interface
contains
 function x1(k) result(r)
      character::r
    r=char(k)
  end function
end
module mod
use m0
   procedure (x1),pointer :: p
 contains
subroutine s(p)
   procedure (x2),pointer :: p
if (p()/=1)print *,3
end subroutine
end

subroutine s1
use mod
p=>x1
if (p(ichar('a'))/='a') print *,202
end 

call s1
print *,'pass'
end
 function x2() result(r)
      integer::r
      r=1
  end function
