MODULE mod2
IMPLICIT NONE

ABSTRACT INTERFACE
  FUNCTION fun_abs(dmy)
    REAL :: dmy
    REAL :: fun_abs
  END FUNCTION
END INTERFACE

REAL :: temp

TYPE ty1
  PROCEDURE(fun_abs),POINTER,NOPASS,PRIVATE :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE

CONTAINS

FUNCTION fun1()
  REAL :: fun1
  TYPE(ty2) :: obj
  obj%ty1_obj%proc_ptr => fun2
  fun1=obj%ty1_obj%proc_ptr(4.0)
END FUNCTION

FUNCTION fun2(dmy)
  REAL :: dmy
  REAL :: fun2
  fun2 = dmy + 1
END FUNCTION

END MODULE

PROGRAM MAIN
USE mod2

IMPLICIT NONE

temp=fun1()

IF (temp .EQ. 5.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

END PROGRAM MAIN
