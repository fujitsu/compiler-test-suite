MODULE mod1
IMPLICIT NONE

type ty
  integer::num
end type

INTERFACE
function msub(dd1,dd2)
Import ty
  type(ty),intent(in)::dd1
  REAL,intent(in) :: dd2
  integer ::msub
END function
function mfun(dd1,dd2)
Import ty
  Integer,intent(in) :: dd1
  type(ty),intent(in)::dd2
  integer ::mfun
END function
END INTERFACE

Private :: msub,mfun
Procedure(msub),pointer::ptr

INTERFACE operator(+) 
  PROCEDURE ptr,mfun 
END INTERFACE
contains 
subroutine psub()
  ptr=>msub
end subroutine
END MODULE

PROGRAM main
USE mod1

Integer ::xx , num1
type(ty) :: obj
num1 = 10
obj%num = 10
call psub()
xx =  num1 + obj

if(xx .EQ. 100)then 
 Print*,'PASS'
else
 Print*,'FAIL'
endif
END PROGRAM

function msub(dd1,dd2)
use mod1
  type(ty),intent(in)::dd1
  REAL,intent(in) :: dd2
  integer msub
  print*,"call msub"
  msub = dd1%num * dd2
END function

function mfun(dd1,dd2)
use mod1
  Integer,intent(in) :: dd1
  type(ty),intent(in)::dd2
  integer ::mfun
  mfun = dd1 * dd2%num
END function
