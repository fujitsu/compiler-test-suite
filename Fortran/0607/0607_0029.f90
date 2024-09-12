MODULE mod1
IMPLICIT NONE
  TYPE t1
    INTEGER :: i=2
  END TYPE

END MODULE

function fun(a,b)
use mod1
 type(t1) :: a(:)
 integer :: b
 type(t1) :: fun(5)
 do i=1,5
  fun(i)%i = a(i)%i*b
 end do
end function

PROGRAM main

USE mod1
IMPLICIT NONE

interface
function fun(a,b)
 import t1
 type(t1) :: a(:)
 integer :: b
 type(t1) :: fun(5)
end function
end interface

TYPE(t1) :: obj(5)
integer::ii = 9

ASSOCIATE(aa => fun(obj,ii))
  if(aa(1)%i==18) print*,'PASS'
END ASSOCIATE

END PROGRAM

