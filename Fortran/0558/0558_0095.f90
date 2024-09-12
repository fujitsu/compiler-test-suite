MODULE mod1
IMPLICIT NONE

INTEGER(kind = 4) :: num1 = 5,num2 = 6,res

INTERFACE
FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
END FUNCTION
FUNCTION intfun(dd1,dd2)
  REAL :: dd1,dd2,intfun
END FUNCTION
END INTERFACE

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

PROCEDURE(extfun),POINTER :: eefun
PROCEDURE(mod) :: infun
PROCEDURE(intfun) :: npfun

INTERFACE gnr
  PROCEDURE npfun
  PROCEDURE :: infun
  PROCEDURE eefun
END INTERFACE

eefun => extfun
res = gnr(num1,num2)

IF(res .EQ. 28) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

FUNCTION extfun(d1,d2)
INTEGER :: d1,extfun
REAL :: d2
d1 = d1 + 2
d2 = d2 + 2.0
extfun = d1 + int(d2)
END FUNCTION

FUNCTION outfun(dd1,dd2,dd3)
  REAL :: dd1,dd2,dd3,outfun,npfun,tfun
  outfun = dd1 + dd2 + dd3
  RETURN
  ENTRY tfun(dd1)
  tfun = dd1
  RETURN
  ENTRY npfun(dd1,dd2)
  dd1 = dd1 + 5.0
  dd2 = dd2 * 3.0
  npfun = dd1 + dd2
  RETURN
END FUNCTION

FUNCTION infun(dd1,dd2)
  INTEGER :: dd1,dd2,infun
  dd1 = dd1 * 2
  dd2 = dd2 * 3
  infun = dd1 + dd2
END FUNCTION
