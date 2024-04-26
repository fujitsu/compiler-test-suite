module mod
contains
subroutine t1(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer,save::faxy
 type x
   integer::x1
   procedure(fax),pointer,nopass::x2
 end type
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
