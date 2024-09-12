PROGRAM main
IMPLICIT NONE

INTEGER :: num1,num2,res
PROCEDURE(efun),POINTER :: ppfun

INTERFACE
FUNCTION qfun(dd1,dd2)
  REAL :: dd1,dd2,qfun
END FUNCTION
FUNCTION mnfun(d1,d2,d3)
  INTEGER :: d1,d2,d3,mnfun
END FUNCTION
FUNCTION tfun(d1)
  INTEGER :: d1,tfun
END FUNCTION 
FUNCTION efun(dd1,dd2)
  INTEGER :: dd1,dd2,efun
END FUNCTION
END INTERFACE

INTERFACE gnr
  PROCEDURE :: ppfun
  PROCEDURE :: qfun
END INTERFACE

num1 = 5
num2 = 7

ppfun =>efun 

res = gnr(num1,num2)

IF(res .EQ. 31) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

FUNCTION qfun(dd1,dd2)
  REAL :: dd1,dd2,qfun
  dd1 = dd1 + 2.0
  dd2 = dd2 + 3.0
  qfun = dd1 + dd2
END FUNCTION

FUNCTION mnfun(d1,d2,d3)
INTEGER :: d1,d2,d3,mnfun,efun,tfun
  mnfun = d1 + d2 + d3
  RETURN
  ENTRY efun(d1,d2)
  d1 = d1 * 2
  d2 = d2 * 3
  efun = d1 + d2
  RETURN
  ENTRY tfun(d1) 
  tfun = d1
  RETURN
END FUNCTION

