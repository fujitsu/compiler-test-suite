Module mod1
 type :: ty 
     Integer::a
  end type 

Interface 
function foo(arg,arg1) result(res)
Import ty
Integer::res
type(ty),intent(in)::arg
integer,intent(in)::arg1
end function
end interface

INTERFACE gnr 
  PROCEDURE :: fun,foo
END INTERFACE
private ::foo,fun 

contains
  function fun(arg, arg1) result (res)
  Integer :: res
  type(ty), intent(in) :: arg,arg1
  res = arg%a*arg1%a
  end function 
end module

PROGRAM main
use mod1

type(ty) :: arg
Integer::arg1
arg%a = 10
arg1 = 10
res = gnr(arg,arg1)

IF(res .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

function foo(arg,arg1) result(res)
use mod1
Integer::res
type(ty),intent(in)::arg
integer,intent(in)::arg1

res = arg%a + arg1
end function

