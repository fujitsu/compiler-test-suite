MODULE mod1
  IMPLICIT NONE
  REAL :: temp

  TYPE ty1
    PROCEDURE(fun1),POINTER,PASS,PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE

  CONTAINS  
    FUNCTION fun(dmy)
      REAL :: dmy
      REAL :: fun
      CLASS(ty1)::def_dmy
      REAL :: dmy1
      REAL :: dmy2
      REAL :: fun1
      fun = dmy + 1
    RETURN
      ENTRY fun1(def_dmy,dmy1,dmy2)
        fun1 = dmy1 + dmy2
      RETURN
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

temp=callfun()

IF (temp .eq. 5.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun
  TYPE(ty2) :: obj
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(2.0,3.0)
END FUNCTION

END PROGRAM main

