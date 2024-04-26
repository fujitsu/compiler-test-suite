MODULE mod1
IMPLICIT NONE
  TYPE t1
    INTEGER :: i=1
  END TYPE

END MODULE

function pls(a,b)
use mod1
 type(t1),intent(in) :: a
 integer, intent(in) :: b
 type(t1) :: pls
  pls%i = a%i+b
end function

PROGRAM main

USE mod1
IMPLICIT NONE

interface operator(+)
function pls(a,b)
 import t1
 type(t1),intent(in) :: a
 integer, intent(in) :: b
 type(t1) :: pls
end function
end interface

TYPE(t1) :: obj

ASSOCIATE(aa => obj+1)
  if(aa%i/=2) print*,101
  call sub(aa)
  if(aa%i/=4) print*,102
  print*,'pass'
END ASSOCIATE

CONTAINS
SUBROUTINE sub(ob)
USE mod1
TYPE(t1) :: ob
ob%i = 4             
END SUBROUTINE

END PROGRAM
