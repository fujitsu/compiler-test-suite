MODULE mod1
IMPLICIT NONE
  TYPE t1
    INTEGER :: i=1
  END TYPE

END MODULE

function pls(a,b)
use mod1
 type(t1),intent(in) :: a(:,:,:)
 integer, intent(in) :: b
 type(t1) :: pls(5,5,5)
 do i1=1,5 
 do j=1,5 
 do k=1,5
  pls(i1,j,k)%i = a(i1,j,k)%i+b
 end do
 end do
 end do
end function

PROGRAM main

USE mod1
IMPLICIT NONE

interface operator(+)
function pls(a,b)
 import t1
 type(t1),intent(in) :: a(:,:,:)
 integer, intent(in) :: b
 type(t1) :: pls(5,5,5)
end function
end interface

TYPE(t1) :: obj(5,5,5)
integer::ii = 9

ASSOCIATE(aa => obj+1+ii)
  if(all(aa%i == 11)) print*,'pass'
END ASSOCIATE

END PROGRAM
