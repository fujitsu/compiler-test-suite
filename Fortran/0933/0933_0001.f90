module m1
interface
        function fun1()
        integer, pointer::fun1
        end function
        function fun()
        integer, pointer::fun
        end function
end interface
procedure(fun1),pointer,protected::ptr=>fun1
contains
        subroutine sub(x)
        procedure(fun),pointer,intent(out)::x
        x=>fun
        end subroutine
end module
        function fun()
        integer,pointer::fun
        allocate(fun)  
        fun=100
        print *,"hello"
        end function 
        function fun1()
        integer,pointer::fun1
        allocate(fun1)  
        fun1=1100
        print *,"hello 1"
        end function 


use m1
call sub(ptr) 
end
