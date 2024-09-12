MODULE mod1
IMPLICIT NONE
type ty
integer::num
end type

CONTAINS
subroutine mfun(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  Integer,intent(IN) :: dd2
  dd1%num = dd2 + dd2*2 
END subroutine
END MODULE

MODULE mod2
USE mod1
IMPLICIT NONE

INTERFACE
SUBROUTINE extfun(d1,d2)
import ty
  Integer,intent(OUT) :: d1
  TYPE(ty),Intent(IN) ::d2 
END SUBROUTINE
END INTERFACE

CONTAINS
subroutine nfun(dd1,dd2)
  TYPE(ty),Intent(OUT) ::dd1 
  real,intent(IN) :: dd2
  dd1%num = dd2 
END subroutine
END MODULE

PROGRAM main
USE mod2
IMPLICIT NONE
INTEGER :: res
type(ty)::obj 

PROCEDURE(nfun),POINTER :: ppfun
PROCEDURE(extfun) :: npsub

INTERFACE Assignment (=) 
  PROCEDURE npsub,ppfun
  MODULE PROCEDURE mfun
END INTERFACE

ppfun => nfun
res = 10
obj = res
IF(obj%num .EQ. 30) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM

SUBROUTINE npsub(d1,d2)
Use mod2
  Integer,intent(OUT) :: d1
  TYPE(ty),Intent(IN) ::d2 
  d1 = d2%num 
END SUBROUTINE
