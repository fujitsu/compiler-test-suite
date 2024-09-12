MODULE mod1
IMPLICIT NONE
type ty
real:: num2
end type

CONTAINS
SUBROUTINE qsub(dd1,dd2)
  REAL,intent(OUT) :: dd1
  TYPE(ty),Intent(IN) ::dd2 
  dd1 = dd2% num2 
END SUBROUTINE
SUBROUTINE psub(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  REAL,intent(IN) :: dd2
  dd1%num2 = dd2 
END SUBROUTINE
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: res
res = mfun(qsub)
print*,res

CONTAINS
INTEGER FUNCTION mfun(dsub)
PROCEDURE(qsub) :: dsub

INTERFACE Assignment(=)
  MODULE PROCEDURE psub
  PROCEDURE dsub
END INTERFACE

type(ty)::obj
real::r
obj%num2 = 6
r = obj

IF(r .EQ. 6) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

mfun = 2
END FUNCTION
END PROGRAM

