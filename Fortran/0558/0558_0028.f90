module m1
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

interface gnr 
 module procedure fun
 procedure foo
end interface

contains
  function fun(arg, arg1) result (res)
  Integer :: res
  type(ty), intent(in) :: arg,arg1
  res = arg%a*arg1%a
  end function 
end module m1

program main
use m1, only :  foo 
use m1, only :  gnr 
use m1, only :  ty 

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

end

function foo(arg,arg1) result(res)
use m1, only :  ty 
Integer::res
type(ty),intent(in)::arg
integer,intent(in)::arg1

res = arg%a + arg1
end function
