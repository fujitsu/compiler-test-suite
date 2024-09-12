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
character(len = :),allocatable ::mod_fun
PROCEDURE(mfun) :: prc
INTERFACE gnr
  PROCEDURE :: prc
END INTERFACE

allocate(character(len = 4)::mod_fun)
mod_fun = gnr(num)

END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

character(len = :),allocatable ::res
allocate(character(len = 4)::res)
res = mod_fun()
IF(res .EQ. 'abcd') THEN
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
