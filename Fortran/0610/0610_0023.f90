module mod1
TYPE first
 INTEGER :: i1=-1
END TYPE
 
TYPE,EXTENDS(first) :: second
 INTEGER :: i2=-1
END TYPE
 
TYPE,EXTENDS(second) :: third
 INTEGER :: i3=-1
END TYPE

interface operator (.mult.)
  module procedure multip
end interface

contains
function modfun(dum)
CLASS(second),allocatable :: modfun
TYPE(second):: dum
allocate(modfun)
dum%i2=32
modfun%i2 = dum%i2
end function

function multip(d1,d2)
implicit none
class(second),intent(in) :: d1
integer,intent(in) :: d2
class(second),allocatable :: multip
allocate(multip)
multip%i2 = d1%i2 * d2
end function

end module
 
PROGRAM main
use mod1

CLASS(second),allocatable :: acc1
allocate(acc1)
call sub(acc1)

contains
SUBROUTINE sub(tgt)
TYPE(second) :: tgt
 
SELECT TYPE(A => modfun(tgt) .mult. 2)
 TYPE IS(second)
  if(A%i2/=64) then
    print*,212
  else 
    print*,'pass'
  endif
 TYPE IS(third)
  PRINT*,'102'
END SELECT

END SUBROUTINE
END PROGRAM
