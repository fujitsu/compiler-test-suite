module mod
contains
subroutine t1(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer,save::faxy
 faxy=>fx6
 if (any(faxy(2)/='xy'))print *,101
 if (any(fx6(2)/='xy'))print *,102
end subroutine

subroutine t0
 call t1(fax)
end subroutine

   function fax(i) result(r)
     character(i),allocatable::r(:)
     allocate(r(2))
     r='xy'
   end function
end

use mod

call t0
print *,'pass'
end
