PROGRAM main

INTERFACE
  FUNCTION fun(dmy)
    REAL :: dmy
    REAL,pointer :: fun(:)
  END FUNCTION

  FUNCTION fun2()
    REAL,target,save :: dmy2(3)
    REAL,pointer :: fun2(:)
  END FUNCTION
END INTERFACE

REAL :: temp(3)

PROCEDURE(fun),POINTER :: proc_ptr=>NULL()
PROCEDURE(fun2),POINTER :: proc_ptr2=>NULL()

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

  proc_ptr2 => fun2
  if(is_contiguous(proc_ptr2())) print*,102
END FUNCTION

END PROGRAM main

FUNCTION fun(dmy)
  REAL :: dmy
  REAL,pointer :: fun(:)
  allocate(fun(3))
  fun = dmy + 1
END FUNCTION

FUNCTION fun2()
  REAL,target,save :: dmy2(3)
  REAL,pointer :: fun2(:)
  dmy2=2.0
  
  fun2 => dmy2(::2)
END FUNCTION
