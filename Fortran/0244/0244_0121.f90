PROGRAM main

INTERFACE
  FUNCTION fun(dmy,n)
    INTEGER :: n
    REAL :: dmy
    REAL :: fun(n)
  END FUNCTION
END INTERFACE

REAL :: temp(3)

TYPE ty1
  PROCEDURE(fun),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj
END TYPE


temp=callfun()

IF (all(temp .eq. 3.00)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun(3)
  TYPE(ty2) :: obj
  obj%ty1_obj%proc_ptr => fun
  callfun=obj%ty1_obj%proc_ptr(2.0,3)
  if(.not. is_contiguous(obj%ty1_obj%proc_ptr(2.0,3))) print*,101
END FUNCTION

END PROGRAM main

FUNCTION fun(dmy,n)
  INTEGER :: n
  REAL :: dmy
  REAL :: fun(n)
  fun = dmy + 1
END FUNCTION
