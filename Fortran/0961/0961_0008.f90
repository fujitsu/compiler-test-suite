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
 class(*),pointer :: pls
 allocate(t1::pls)
 select type(pls)
 type is(t1)
  pls%i = a%i+b
 end select
end function

PROGRAM main

USE mod1
IMPLICIT NONE

interface operator(+)
function pls(a,b)
 import t1
 type(t1),intent(in) :: a
 integer, intent(in) :: b
 class(*),pointer :: pls
end function
end interface
interface 
SUBROUTINE sub(ob)
USE mod1
TYPE(t1), intent(inout) :: ob
END SUBROUTINE
end interface

TYPE(t1) :: obj

select type(aa => obj+1)
type is(t1)
  call sub(aa)
  print*,aa
END select
end

SUBROUTINE sub(ob)
USE mod1
TYPE(t1),intent(inout) :: ob
ob%i = 4
END SUBROUTINE

