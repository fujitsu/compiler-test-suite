module mod0
contains
 function px6(arg) result(r)
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r,arg
   r=>x1
   arg=>r
 end function
end
subroutine s1
use mod0
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r,arg
   character(2)::c
r=>px6(arg)
if (r(2)/='12')print *,101
if (arg(2)/='12')print *,102
c=r(2)
if (c/='12')print *,103
c=arg(2)
if (c/='12')print *,104
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
