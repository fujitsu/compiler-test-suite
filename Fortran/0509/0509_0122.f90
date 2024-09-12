module m0
interface
 function x2(i) result(r)
      character(2),pointer::r
  end function
end interface
end
module mod
use m0
   procedure (px6),pointer :: p
 contains
 function px6() result(r)
   procedure (x2),pointer :: r
   r=>x2
 end function
end

subroutine s1
use mod
p=>px6
end 

call s1
print *,'pass'
end
 function x2(i) result(r)
      character(2),pointer::r
      allocate(r)
      r='12'
  end function
