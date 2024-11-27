module m1
procedure(fun),pointer,protected::ptr
interface
        module subroutine ss2()
        end subroutine
        module subroutine ss3()
        end subroutine
end interface
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

module m2
use m1
procedure(fun),pointer,protected::ptr1
interface
        module subroutine ss()
        end subroutine
        module subroutine ss1()
        end subroutine
end interface

end module
submodule (m2) submod1
contains
        module subroutine ss()
        ptr1=>fun
        end subroutine
        module subroutine ss1()
        ptr1=>fun1
        end subroutine
end submodule
submodule (m1) submod1
contains
        module subroutine ss2()
        ptr=>fun
        end subroutine
        module subroutine ss3()
        ptr=>fun1
        end subroutine
end submodule

use m2
call ss
ptr1()=200
if (trg /= 200) print *,101
call ss1
ptr1()=12345
if (trg /= 200) print *,102
if (trg1 /= 12345) print *,103
call ss2
ptr()=5555
if (trg /= 5555) print *,104
if (trg1 /= 12345) print *,105
call ss3
ptr()=1111
if (trg /= 5555) print *,106
if (trg1 /= 1111) print *,107
print *,"Pass"
end
