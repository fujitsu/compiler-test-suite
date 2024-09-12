Module Mod1
 type :: ty 
     Integer,dimension(2) :: a
  end type 
  type :: ty1
     Integer,dimension(2) :: a
  end type 
  Interface gnr
    Module procedure fun
  end interface
  private ::fun 

contains
    function fun(arg, arg1) result (res)
    INteger :: res
    type(ty), intent(in) :: arg
    type(ty1), intent(in) :: arg1
    res = arg%a(1)*arg1%a(1) + arg%a(2)*arg1%a(2)
    IF(res .EQ. 400) THEN
     PRINT*,"PASS"
    ELSE
     PRINT*,"ERROR"
    END IF
  end function 
end module

module m
  use Mod1 
  type :: ty2 
     logical :: zero
  end type  
  type ::ty3 
     logical :: zero
  end type 
  Interface gnr
  Module procedure fun1
  end interface
  private :: fun1
contains
    function fun1 (arg, arg1) result (res)
    Integer :: res
    type(ty3), intent(in) ::arg 
    type(ty2), intent(in) :: arg1
    res = 0
    if (.not. (arg%zero .or. arg1%zero)) then
        res = res + 10
    end if
  end function 
end module

PROGRAM main
use m

integer::res
type(ty) :: arg
type(ty1):: arg1

arg%a = 10
arg1%a = 20
res = gnr(arg,arg1)
print*,res
END PROGRAM

