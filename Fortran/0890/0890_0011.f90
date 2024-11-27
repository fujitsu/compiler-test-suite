MODULE mod1
IMPLICIT NONE

INTEGER :: num1 = 5,num2 = 6,res

INTERFACE
SUBROUTINE extsub(d1,d2)
INTEGER :: d1
REAL :: d2
END SUBROUTINE
SUBROUTINE intsub(dd1,dd2)
  REAL :: dd1,dd2
END SUBROUTINE
END INTERFACE

CONTAINS
FUNCTION enfun(d1,d2,d3)
INTEGER :: d1,d2,d3,enfun,nfun
enfun = d1 + d2 + d3
RETURN
ENTRY nfun(d1,d2)
d1 = d1 * 2
d2 = d2 * 3
nfun = d1 + d2
RETURN
END FUNCTION

END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: mn

PROCEDURE(extsub) :: npsub

mn = fun(nfun)
print*,mn
CONTAINS
FUNCTION fun(dfun)
INTEGER :: fun
PROCEDURE(nfun) :: dfun

INTERFACE gnr
  PROCEDURE npsub
  PROCEDURE dfun
END INTERFACE
fun =10
END FUNCTION
END PROGRAM
