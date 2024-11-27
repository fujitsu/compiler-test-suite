Module mod1
Interface
 subroutine sub(arg)
 integer::arg
 end subroutine
 function fun(arg1)
 integer::arg1,fun
 end function
end interface
end module

PROGRAM main
use mod1
IMPLICIT NONE

contains
subroutine sub1()
INTERFACE gnr
 PROCEDURE sub,fun
END INTERFACE
end subroutine

END PROGRAM

subroutine sub(arg)
integer::arg
arg = 1
end subroutine
function fun(arg1)
integer::arg1,fun
arg1 = 3
fun = arg1
end function
