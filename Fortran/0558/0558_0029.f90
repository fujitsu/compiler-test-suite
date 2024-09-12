module m1
 type :: ty 
     Integer::a
end type 

interface nr 
 procedure fun
end interface
procedure(foo),pointer::ptr
contains
function fun(arg, arg1) result (res)
Integer :: res
type(ty), intent(in) :: arg,arg1
res = arg%a*arg1%a
end function 

function foo(arg,arg1) result(res)
Integer::res
type(ty),intent(in)::arg
integer,intent(in)::arg1

res = arg%a + arg1
end function
end module m1

program main
use m1, only :  ty 
use m1, only :  ptr 
use m1, only :  foo 
interface gnr 
 procedure ptr
end interface
type(ty) :: arg
Integer::arg1

ptr=>foo
arg%a = 10
arg1 = 10
res = gnr(arg,arg1)

IF(res .EQ. 20) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

end

