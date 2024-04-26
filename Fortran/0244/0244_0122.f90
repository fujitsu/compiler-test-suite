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

TYPE ty1
  PROCEDURE(fun),POINTER,NOPASS :: proc_ptr=>NULL()
  PROCEDURE(fun2),POINTER,NOPASS :: proc_ptr2=>NULL()
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
  callfun=obj%ty1_obj%proc_ptr(2.0)
  if(.not. is_contiguous(obj%ty1_obj%proc_ptr(2.0))) print*,101

  obj%ty1_obj%proc_ptr2 => fun2
  if(is_contiguous(obj%ty1_obj%proc_ptr2())) print*,102
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
