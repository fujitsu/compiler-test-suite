PROGRAM main
IMPLICIT NONE

INTERFACE
  FUNCTION fun(dmy)
    REAL :: dmy
    REAL :: fun
  END FUNCTION
  FUNCTION fun1(dmy1,dmy2)
    REAL :: dmy1
    REAL :: dmy2
    REAL :: fun1
  END FUNCTION 

END INTERFACE

REAL :: temp

TYPE ty1
  PROCEDURE(fun1),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE


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

FUNCTION inter_used(q1,q2)
  REAL::q1
  REAL::q2
  REAL::inter_used
  q1=3.0
  q2=4.0
  inter_used = q1+q2
END FUNCTION

END PROGRAM main

FUNCTION fun(dmy)
  REAL :: dmy
  REAL :: fun
  REAL :: dmy1
  REAL :: dmy2
  REAL :: fun1
  fun = dmy + 1
  RETURN
  ENTRY fun1(dmy1,dmy2)
    fun1 = dmy1 + dmy2
  RETURN
END FUNCTION
