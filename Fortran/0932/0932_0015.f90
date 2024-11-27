module m1
interface
        module subroutine ss()
        end subroutine
        module subroutine ss1()
        end subroutine
end interface
procedure(fun),protected::ptr
pointer::ptr
integer, target :: trg=1000
integer, target :: trg1=5555
contains
        function fun()
        integer,pointer::fun
        fun=>trg
        end function
        function fun1()
        integer,pointer::fun1
        fun1=>trg1
        end function
end module

submodule (m1) submod1
contains
        module subroutine ss()
        ptr=>fun
        end subroutine
        module subroutine ss1()
        ptr=>fun1
        end subroutine
end submodule

use m1
call ss
ptr()=200
if (trg /= 200) print *,101
call ss1
ptr()=12345
if (trg /= 200) print *,102
if (trg1 /= 12345) print *,103
print *,"Pass"
end
