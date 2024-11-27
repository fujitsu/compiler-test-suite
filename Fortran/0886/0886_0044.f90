PROGRAM main

INTERFACE
  FUNCTION fun(dmy)
    REAL :: dmy
    REAL :: fun(8)
  END FUNCTION
  FUNCTION fun1(dmy1,dmy2)
    REAL :: dmy1
    REAL :: dmy2
    REAL :: fun1(8)
  END FUNCTION 

END INTERFACE

PROCEDURE(fun1),POINTER :: proc_ptr=>NULL()
CONTIGUOUS :: proc_ptr

CONTAINS

FUNCTION callfun()
  REAL :: callfun(8)
  proc_ptr => fun1
  callfun=proc_ptr(2.0,3.0)
  
END FUNCTION

END PROGRAM main
