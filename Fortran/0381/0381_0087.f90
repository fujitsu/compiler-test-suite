module mod
contains
subroutine t1(fx6)
 procedure(fax)        ::fx6
 procedure(fax),pointer,save::faxy
 faxy=>fx6
 if (faxy()/='x')print *,101
end subroutine

subroutine t0
 call t1(fax)
end subroutine

   function fax() result(r) bind(c)
     character(1)::r
     r='x'
   end function
end

use mod

call t0
print *,'pass'
end
