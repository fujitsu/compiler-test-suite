module m1
type ty
procedure(fun),nopass,pointer :: ptr
contains
        procedure,nopass :: fun
end type
integer,target :: trg=100
contains
        function fun()
        integer,pointer :: fun
        fun=>trg
        end function

end module
use m1
type(ty)::obj
obj%ptr=>fun
call sub(obj%ptr())
if (trg /= 10) print *,100
print *,"Pass"
contains
        subroutine sub(dptr)
        integer,intent(inout) ::dptr
        dptr=10
        end subroutine
end
