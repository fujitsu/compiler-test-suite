MODULE mod1
IMPLICIT NONE
character(len = 4)::num 

INTERFACE
FUNCTION mfun(dd1)
character(len = 4)::dd1,mfun
END FUNCTION
END INTERFACE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

call sub(num)
contains
subroutine sub(res)
character(len = 4)::res
res = mod_fun()
end subroutine

FUNCTION mod_fun()
character(len = 4) ::mod_fun

PROCEDURE(mfun) :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE

mod_fun = gnr(num)

IF(mod_fun .EQ. 'abcd') THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END FUNCTION
END PROGRAM

FUNCTION prc(dd1)
  character(len = 4)::dd1,prc
  dd1 = 'abcd'
  prc = dd1
END FUNCTION
