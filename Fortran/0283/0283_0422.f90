MODULE mod1
IMPLICIT NONE
  TYPE t1
    INTEGER :: i=2
  END TYPE

contains
function fun(a,b)
 type(t1) :: a(:)
 integer :: b,di
 type(t1) :: fun(15)
 do di=1,15
  fun(di)%i = a(di)%i*b
 end do
end function

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

TYPE(t1) :: obj(15)
integer::ii = 9

ASSOCIATE(aa => fun(obj,ii))
  if(all(aa(1::2)%i==18)) print*,'pass'
END ASSOCIATE

END PROGRAM
