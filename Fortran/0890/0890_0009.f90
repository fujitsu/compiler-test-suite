Module mod1
Contains
 subroutine sub(arg)
 integer::arg
 arg = 2
 end subroutine
End Module

Module mod2
use mod1
Interface
 function fun(arg1)
 integer::arg1,fun
 end function
end interface
end module

PROGRAM main
use mod2
character ::res
res = fun1('c')
print*,res
contains
function fun1(arg)
character::fun1,arg
INTERFACE gnr
 Module PROCEDURE sub
 PROCEDURE fun
END INTERFACE
fun1 = arg
end function

END PROGRAM

function fun(arg1)
integer::arg1,fun
arg1 = 3
fun = arg1
end function
