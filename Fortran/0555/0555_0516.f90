PROGRAM main

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
  PROCEDURE(real),POINTER,NOPASS :: proc_ptr_2=>NULL()
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
  obj%proc_ptr_2 => obj%ty1_obj%proc_ptr
  callfun=obj%proc_ptr_2(2.0,3.0)
  
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
