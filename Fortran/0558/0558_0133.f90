PROGRAM main
IMPLICIT NONE

INTEGER :: num = 2,res,res2
PROCEDURE(ss),POINTER :: ptr
PROCEDURE(ff) :: npfun

INTERFACE
INTEGER FUNCTION sp(d1)
  INTEGER :: d1
END FUNCTION 
REAL FUNCTION ff(d1,d2,d3)
  REAL :: d1,d2,d3
END FUNCTION
END INTERFACE

ptr => sp
res = fun(ptr)

IF(res .EQ. 4) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

CONTAINS
INTEGER FUNCTION ss(dd)
INTEGER :: dd
dd = dd + 2
ss = dd
END FUNCTION

INTEGER FUNCTION fun(dum)
PROCEDURE(ss),POINTER :: dum
PROCEDURE(dim),POINTER :: pp

INTERFACE gnr
  PROCEDURE npfun
  PROCEDURE pp
  PROCEDURE :: dum
END INTERFACE

pp => dim
dum => sp
res2 = gnr(num)
fun = res2

END FUNCTION
END PROGRAM

INTEGER FUNCTION sp(d1)
INTEGER :: d1
d1 = d1 * 2
sp = d1
END FUNCTION

REAL FUNCTION npfun(d1,d2,d3)
  REAL :: d1,d2,d3
  npfun = d1 + d2 + d3
END FUNCTION
