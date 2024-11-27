module m1
procedure(fun),pointer,protected::ptr
type ty
procedure(fun),pointer,nopass::pp
end type
integer, target::trg = 200
type(ty),target::obj
contains
        function fun()
        integer,pointer::fun
        fun=>trg
        end function
        subroutine sub()
        ptr=>obj%pp
        end subroutine
        subroutine sub1()
        obj%pp=>fun
        end subroutine
end module

use m1
call sub1()
call sub
ptr()= 555
if (trg /= 555) print *,101
print *,"Pass"
end
