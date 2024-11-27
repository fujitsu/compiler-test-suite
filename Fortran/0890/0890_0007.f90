MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: num
  CONTAINS 
  PROCEDURE,NOPASS :: gnr => pfun,qfun
END TYPE
Interface
subroutine sub1(d1)
integer::d1
end subroutine
end interface
CONTAINS
FUNCTION pfun(d1)
  CLASS(ty) :: d1
  TYPE(ty) :: pfun
  d1%num = d1%num * 2
  pfun = d1
END FUNCTION
FUNCTION qfun(dd1,dd2)
  CLASS(ty) :: dd1,dd2
  TYPE(ty) :: qfun
  dd1%num = dd1%num * 2
  dd2%num = dd2%num * 3
  qfun%num = dd1%num + dd2%num
END FUNCTION
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
CALL sub(pfun)

CONTAINS
SUBROUTINE sub(dum)
PROCEDURE(pfun) :: dum

INTERFACE gnr
  MODULE PROCEDURE qfun
  PROCEDURE dum,sub1
END INTERFACE
END SUBROUTINE
END PROGRAM

