module mod
   procedure (x1),pointer :: p
 contains
 function px6() result(r)
   interface 
     function x2(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x2),pointer :: r
   r=>x2
 end function
 function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
end
module m1
use mod
end

subroutine s1
use m1
p=>px6()
if (p(2)/='12')print *,3
end 

call s1
print *,'pass'
end
 function x2(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
  end function
