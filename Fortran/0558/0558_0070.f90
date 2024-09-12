MODULE mod1
Integer::num1,num2
Interface
SUBROUTINE qsub(dd1,dd2)
  Integer :: dd1,dd2
END SUBROUTINE
end Interface

CONTAINS
SUBROUTINE psub(dd1,dd2)
  REAL :: dd1,dd2
  dd1 = dd1 * 5.0
  dd2 = dd2 + 3.0
END SUBROUTINE

INTEGER FUNCTION mfun()
PROCEDURE(qsub) :: npsub

INTERFACE gnr
  PROCEDURE npsub
  Module procedure psub
END INTERFACE

num1 = 5
num2 = 10
call gnr(num1 , num2)
mfun = num1 + num2
END FUNCTION
END MODULE

PROGRAM main
USE mod1
INTEGER :: res
res = mfun()
if(res .EQ. 40)then
print*,'PASS'
else
print*,'FAIL',res
end if

END PROGRAM

SUBROUTINE npsub(dd1,dd2)
use mod1
  Integer :: dd1,dd2
  dd1 = dd1 * 2
  dd2 = dd2 * 3
END SUBROUTINE
