module m0
contains
 function x2() result(r)
      integer::r
      r=1
  end function
 function x1() result(r)
      character::r
    r='a'
  end function
end
module mod
use m0
   procedure (x1),pointer :: p
 contains
subroutine s()
   procedure (x2),pointer :: p
if (p()/=1)print *,3
end subroutine
end

subroutine s1
use mod
p=>x1
if (p()/='a') print *,202
end 

call s1
print *,'pass'
end