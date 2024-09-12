MODULE mod2
IMPLICIT NONE

REAL :: temp

TYPE ty1
  REAL :: real1 
  PROCEDURE(fun_abs),POINTER,PASS(arg),PUBLIC :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE

ABSTRACT INTERFACE
  FUNCTION fun_abs(dmy,arg)
    import ty1
    CLASS(ty1) :: arg
    REAL :: dmy
    REAL :: fun_abs
  END FUNCTION
END INTERFACE

CONTAINS

FUNCTION fun(dmy,arg)
  CLASS(ty1) :: arg
  REAL :: dmy
  REAL :: fun
  arg%real1=3.5
  fun = dmy + 1
END FUNCTION

 
END MODULE

PROGRAM MAIN
USE mod2
implicit none

temp=callfun()

IF (temp .EQ. 3.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun
  TYPE(ty2) :: obj
  temp=5.6
  obj%ty1_obj%proc_ptr => fun
  callfun=obj%ty1_obj%proc_ptr(2.0)
END FUNCTION

END PROGRAM MAIN
