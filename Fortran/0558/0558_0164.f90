MODULE m1
IMPLICIT NONE

TYPE ty
  INTEGER :: num1
  INTEGER :: num2
END TYPE

CONTAINS
FUNCTION mod_fun(ad1,bd1)
TYPE(ty) :: mod_fun,ad1,bd1
mod_fun = pfun(ad1,bd1)
CONTAINS
FUNCTION pfun(dd1,dd2)
  TYPE(ty) :: dd1,dd2,pfun
  dd1%num1 = dd1%num1 * dd2%num1 
  dd1%num2 = dd1%num2 * dd2%num2 
  pfun = dd1
END FUNCTION
END FUNCTION
END MODULE

PROGRAM main
USE m1
IMPLICIT NONE

INTERFACE gnr
  Module PROCEDURE mod_fun 
END INTERFACE
TYPE(ty) :: res,obj1,obj2 
obj1%num1 = 5
obj1%num2 = 4

obj2%num1 = 3
obj2%num2 = 6

res = gnr(obj1,obj2)

IF(res%num1 .EQ. 15 .AND. res%num2 .EQ. 24) THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF
END PROGRAM
