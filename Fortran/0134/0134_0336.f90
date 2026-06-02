module mod0
 interface 
       function x1() result(r)
        character(2),pointer::r
       end function
 end interface
 type y1
    integer::y11
    procedure (x1),nopass,pointer :: y12
 end type
 type(y1),allocatable::v(:)
 integer::k=2
contains
   function px6() result(r)
   procedure (x1),pointer :: r
   r=>x1
   end function

   subroutine st(p)
   procedure (x1)         :: p
   if (p()/='xy')print *,'error-4'
   end subroutine
   subroutine sp(p)
   procedure (x1),pointer         :: p
   if (p()/='xy')print *,'error-5'
   end subroutine
end
subroutine z
use mod0
   call st(px6())
   allocate(v(2))
   v(k)%y12=>x1
   call st(v(k)%y12)
   call sp(px6())
   call sp(v(k)%y12)
end
call z
print *,'pass'
end
       function x1() result(r)
        character(2),pointer::r
        allocate(r)
        r='xy'
       end function
