module m0
interface
 function x2(i) result(p)
      character(2),pointer::p
  end function
end interface
end
module mod
use m0
   procedure (px6),pointer :: p
   procedure (x2 ),pointer :: a
 contains
subroutine s(q)
   procedure (x2),pointer :: q
if (q(2)/='12')print *,3
end subroutine
 function px6(b) result(r)
   procedure (x2),pointer :: r
   procedure (x2),pointer :: b
   r=>b 
 end function
end

subroutine s1
use mod
p=>px6
a=>x2
call s(p(a))
end 

call s1
print *,'pass'
end
 function x2(i) result(r)
      character(2),pointer::r
      allocate(r)
      r(:i)='12'
  end function
