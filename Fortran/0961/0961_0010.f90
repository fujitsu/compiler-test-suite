module mod1
type tt
 integer::i1=1
end type

interface operator(+)
 module procedure pls
end interface

contains
function pls(a,b)
type(tt),intent(in) :: a
integer,intent(in)  :: b
class(*),allocatable:: pls
allocate(integer::pls)
select type(pls)
type is(integer)
 pls = a%i1+b
end select
end function
end module

PROGRAM main
use mod1
IMPLICIT NONE

type(tt) :: obj
INTEGER :: n = 4,num2 = 2
 
select type(bb => obj+num2)
type is(integer)
ASSIGN 20 TO bb
  n = n + 2
  GOTO bb
  20  IF(n .EQ. 6) PRINT*,'pass'
END select
 
END PROGRAM
