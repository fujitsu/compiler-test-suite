module mod0
contains
 subroutine z(arg) 
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: arg
   character(2)::c
   arg=>x1
   if (arg(2)/='12')print *,1
   c=arg(2)
   if (c/='12')print *,2
 end subroutine
end
subroutine s1
use mod0
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: p
call z(p)
if (p(2)/='12')print *,3
end
call s1
print *,'pass'
end
     function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
