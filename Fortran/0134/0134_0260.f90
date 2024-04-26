module mod0
 interface 
       function x1() result(r)
        character(2),pointer::r
       end function
 end interface
contains
   function px6() result(r)
   procedure (x1),pointer :: r
   r=>x1
   end function

   subroutine st(p)
   procedure (x1)         :: p
   if (p()/='xy')print *,'error-4'
   end subroutine
end
subroutine z
use mod0
   call st(px6())
end
call z
print *,'pass'
end
       function x1() result(r)
        character(2),pointer::r
        allocate(r)
        r='xy'
       end function
