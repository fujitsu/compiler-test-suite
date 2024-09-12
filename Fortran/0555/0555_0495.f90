PROGRAM main

INTERFACE
  FUNCTION fun(dmy)
    REAL :: dmy(3)
    REAL :: fun(3)
  END FUNCTION
  FUNCTION fun1(dmy1,dmy2)
    REAL :: dmy1(3)
    REAL :: dmy2(3)
    REAL :: fun1(3)
  END FUNCTION 

END INTERFACE

REAL :: temp(3)

TYPE ty1
  PROCEDURE(fun1),POINTER,NOPASS :: proc_ptr
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE


temp=callfun()

IF (temp(2) .eq. 10.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun(3)
  REAL :: act1(3),act2(3)
  TYPE(ty2) :: obj
  act1=2.0
  act2=6.0
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(act1,act2)
END FUNCTION

END PROGRAM main

FUNCTION fun(dmy)
  REAL :: dmy(3)
  REAL :: fun(3)
  REAL :: dmy1(3)
  REAL :: dmy2(3)
  REAL :: fun1(3)
  fun = dmy + 1
  RETURN
  ENTRY fun1(dmy1,dmy2)
    dmy1=dmy1+1
    dmy2=dmy2+1
    fun1 = dmy1 + dmy2
  RETURN
END FUNCTION
