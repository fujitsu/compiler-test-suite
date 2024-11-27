module m1
interface
        function fun1()
        integer, pointer::fun1
        end function
        function fun()
        integer, pointer::fun
        end function
end interface
integer,target::trg=100,trg1=500
procedure(fun1),pointer,protected::ptr=>fun1
contains
        subroutine sub(x)
        procedure(fun),pointer::x
        x=>fun
        end subroutine
end module
        function fun()
        use m1, only : trg
        integer,pointer::fun
        fun=>trg
        end function 
        function fun1()
        use m1, only : trg1
        integer,pointer::fun1
        fun1=>trg1
        end function 


use m1
ptr()=5555
if (trg1 /= 5555)print *,101
if (trg /= 100)print *,102
call sub(ptr) 
ptr()=2520
if (trg1 /= 5555)print *,103
if (trg /= 2520)print *,104
print *,"Pass"
end
