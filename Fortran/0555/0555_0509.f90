MODULE mod1
CONTAINS
FUNCTION fun(dmy)
  REAL :: dmy
  REAL :: fun
  fun = dmy + 1
END FUNCTION

END MODULE

PROGRAM main
USE mod1

ABSTRACT INTERFACE
  FUNCTION fun_abs(dmy)
    REAL :: dmy
    REAL :: fun_abs
  END FUNCTION
END INTERFACE

REAL :: temp

TYPE ty1
  PROCEDURE(fun_abs),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE


temp=callfun()

IF (temp .eq. 3.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun
  TYPE(ty2) :: obj
  obj%ty1_obj%proc_ptr => fun
  callfun=obj%ty1_obj%proc_ptr(2.0)
END FUNCTION

END PROGRAM main

