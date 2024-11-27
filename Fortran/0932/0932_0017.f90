module m1
integer,target::trg=111
integer,target::trg1=12121
procedure(fun),pointer,protected::ptr=>fun
contains
        function fun()
        integer, pointer::fun   
        fun=>trg
        ptr=>fun1
        end function
        function fun1()
        integer, pointer::fun1
        fun1=>trg1
        end function
end module

use m1
ptr()=100
if (trg /= 100) print *,101
if (trg1 /= 12121) print *,102
ptr()=555
if (trg /= 100) print *,103
if (trg1 /= 555) print *,104
print *,"Pass"
end
