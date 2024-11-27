module m1
procedure(),protected,pointer,save::ptr
integer::xx=10
contains
        subroutine sub(x)
        procedure()::x
        ptr=>x
        end subroutine

        integer function fun1()result (res)
        xx=100
        res = xx 
        end function
        integer function fun2()result (res)
        xx=200
        res = xx 
        end function
end module  

use m1
call sub(fun1)
call ptr 
if (xx /= 100) print *,101
call sub(fun2)
call ptr 
if (xx /= 200) print *,102
print *,"Pass"
end

