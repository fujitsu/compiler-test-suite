MODULE mod1
IMPLICIT NONE
character(len = 4)::num = 'abcd'
INTERFACE
FUNCTION mfun(dd1)
character(len = 4)::dd1,mfun
END FUNCTION
END INTERFACE

CONTAINS
FUNCTION mod_fun()
character(len = 4),target ::mod_fun
PROCEDURE(mfun) :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE

mod_fun = gnr(num)
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

character(len = :),pointer ::res
character(len = 4),target::tar
res=>tar
tar = mod_fun()
IF(tar .EQ. 'abcd') THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION prc(dd1)
  character(len = 4)::dd1,prc
  dd1 = 'abcd'
  prc = dd1
END FUNCTION
