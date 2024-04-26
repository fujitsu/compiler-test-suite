module mod0
contains
 function px6() result(r)
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r
   character(3)::c
   r=>x1
   if (r(2)/='1234')print *,1
   c=r(2)
   if (c/='123')print *,2
 end function
end
subroutine s1
use mod0
   interface 
     function x1(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: p
p=>px6()
if (p(2)/='1234')print *,3
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      r='1234'
     end function
