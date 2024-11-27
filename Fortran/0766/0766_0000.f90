module m1
 type :: ty 
     Integer::a
end type 

procedure(foo),pointer::ptr
contains
  function foo(arg,arg1) result(res)
    Integer::res
    type(ty),intent(in)::arg
    integer,intent(in)::arg1
    res = arg%a + arg1
  end function
end module m1

program main
use m1
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
  PRINT*,"pass"
ELSE
  PRINT*,"ERROR"
END IF

end
