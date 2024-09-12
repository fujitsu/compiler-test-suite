MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: aa
  REAL :: rr
END TYPE

CONTAINS
TYPE(ty) FUNCTION mfun(d2,d3)
INTEGER :: d2
REAL :: d3
TYPE(ty) :: d1
d1%aa = d2
d1%rr = d3
mfun = d1
END FUNCTION

TYPE(ty) FUNCTION intfun(dd1,dd2)
TYPE(ty) :: dd1,dd2
dd1%aa = dd1%aa + dd2%aa
dd1%rr = dd1%rr + dd2%rr
intfun = dd1
END FUNCTION

END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE
type(ty)::rlt
INTEGER :: nn,ii
REAL :: dl

CONTAINS
SUBROUTINE modsub(dd1,dd2)
INTEGER :: dd1
REAL :: dd2
PROCEDURE(mod),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE ppfun
  PROCEDURE mfun
END INTERFACE

ppfun => mod
rlt =  gnr(dd1,dd2)
IF(rlt%aa .EQ. 12 .AND. rlt%rr .EQ. 8.0) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END SUBROUTINE
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE

TYPE(ty) :: obj1,obj2,res

obj1%aa = 2
obj1%rr = 4.0

obj2%aa = 4
obj2%rr = 5.0

nn = 12
dl = 8.0

CALL modsub(nn,dl)

call sub(mfun)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(mfun) :: dum
PROCEDURE(intfun),POINTER :: ppfun

INTERFACE gnr
  PROCEDURE dum
  PROCEDURE ppfun
END INTERFACE
  
ppfun => intfun
res = gnr(obj1,obj2)
IF(res%aa .EQ. 6 .AND. res%rr .EQ. 9.0) THEN
print*,'PASS'
ELSE
  PRINT*,"ERROR"
END IF

END SUBROUTINE

END PROGRAM
