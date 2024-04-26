module mod
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
 if (faxy(2)/='xy')print *,101
 if (fx6(2)/='xy')print *,102
 fy%x2=>fx6
 if (fy%x2(2)/='xy')print *,103
 allocate(fw)
 fw%x2=>fx6
 if (fw%x2(2)/='xy')print *,104
 call t2(fx6)
 call t2(faxy)
 call t2(fy%x2)
 call t2(fw%x2)
end subroutine
subroutine t2(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer::faxy
 faxy=>fx6
 if (faxy(2)/='xy')print *,201
 if (fx6(2)/='xy')print *,202
end subroutine


subroutine t0
 call t1(fax)
end subroutine

   function fax(i) result(r)
     character(i)::r
     r='xy'
   end function
end

use mod

call t0
print *,'pass'
end
