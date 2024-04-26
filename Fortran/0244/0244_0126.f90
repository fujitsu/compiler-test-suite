PROGRAM main

INTERFACE
  FUNCTION fun(dmy)
    REAL :: dmy
    REAL :: fun(3)
  END FUNCTION
END INTERFACE

REAL :: temp(3)

PROCEDURE(fun),POINTER :: proc_ptr=>NULL()

temp=callfun()

IF (all(temp .eq. 3.00)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun(3)
  proc_ptr => fun
  callfun=proc_ptr(2.0)
  if(.not. is_contiguous(proc_ptr(2.0))) print*,101
END FUNCTION

END PROGRAM main

FUNCTION fun(dmy)
  REAL :: dmy
  REAL :: fun(3)
  fun = dmy + 1
END FUNCTION
