module m0
interface
  subroutine foox
  end
END INTERFACE
end
MODULE mod1
use m0
IMPLICIT NONE
REAL :: num

INTERFACE
subroutine msub(dd1,dd2)
  Logical,intent(out) ::dd1
  REAL,intent(in) :: dd2
END subroutine
END INTERFACE

procedure(msub),pointer :: pprc
INTERFACE assignment(=) 
  PROCEDURE pprc,mfun
END INTERFACE

contains
subroutine sub()
pprc =>msub
end subroutine

subroutine mfun(dd1,dd2)
  real,intent(out) :: dd1
  Logical,Intent(in) ::dd2
  Logical ::dd
  dd1 = 2.0
  dd = dd2
  print*,dd 
END subroutine
END MODULE

module m2
interface
  subroutine foo
     use mod1
  end
END INTERFACE
end
PROGRAM main
USE mod1
use m2
IMPLICIT NONE
real  :: xx = 3.2

Logical t 
call sub()
t = xx
if(t)then
else
 print*,'FAIL'
endif
 print*,'sngg833o : pass'
END PROGRAM

subroutine msub(dd1,dd2)
use mod1
  Logical,Intent(out) ::dd1
  real,intent(in) :: dd2
  if(dd2 .EQ. 3.2)then
  dd1 = .TRUE.
  else
  dd1 = .FALSE.
  endif
END subroutine


