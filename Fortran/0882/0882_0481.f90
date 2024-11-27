module mod1
type base
  integer :: ii=0
  contains
    procedure , NOPASS :: prc=>fun1
end type

type,extends(base) :: deriv1
  contains
    procedure , NOPASS:: prc=>fun2
end type

interface
function fun1() bind(C,name="Cfun1")
  USE, INTRINSIC :: ISO_C_BINDING
  INTEGER(C_INT) :: fun1
end function

function fun2() bind(C,name="Cfun2")
  USE, INTRINSIC :: ISO_C_BINDING
  INTEGER(C_INT) :: fun2
end function
end interface
end module

use mod1
class(base),pointer :: cptr
allocate(deriv1::cptr)
if(cptr%prc() .NE. 20) print*,"Fail"
print*,"Pass"
end

function fun1() bind(C,name="Cfun1")
  USE, INTRINSIC :: ISO_C_BINDING
  INTEGER(C_INT) :: fun1
fun1=999
end function

function fun2() bind(C,name="Cfun2")
  USE, INTRINSIC :: ISO_C_BINDING
  INTEGER(C_INT) :: fun2
fun2=20
end function
