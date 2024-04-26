module mod
 interface
   function fax() result(r)
     character(1)::r
   end function
 end interface
contains
subroutine t1(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer,save::faxy
 type x
   integer::x1
   procedure(fax),pointer,nopass::x2
 end type
 type(x)::fy
 type(x),pointer::fw
 faxy=>fx6
 if (faxy()/='x')print *,101
 if (fx6()/='x')print *,102
 fy%x2=>fx6
 if (fy%x2()/='x')print *,103
 allocate(fw)
 fw%x2=>fx6
 if (fw%x2()/='x')print *,104
 call t2(fx6)
 call t2(faxy)
 call t2(fy%x2)
 call t2(fw%x2)
 if (.not.associated(faxy,fx6))print *,105
end subroutine
subroutine t2(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer::faxy
 faxy=>fx6
 if (faxy()/='x')print *,201
 if (fx6()/='x')print *,202
end subroutine


subroutine t0
 call t1(fax)
end subroutine
end

   function fax() result(r)
     character(1)::r
     r='x'
   end function

use mod

call t0
print *,'pass'
end
