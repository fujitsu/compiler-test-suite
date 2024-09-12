MODULE mod1
  REAL :: temp

  TYPE ty1
    PROCEDURE(fun1),POINTER,PASS(def_dmy),PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE

  CONTAINS  
    FUNCTION fun1(dmy,def_dmy) RESULT (res)
      INTEGER :: dmy
      CLASS(ty1)::def_dmy
      REAL::res
      TYPE ty
        PROCEDURE(fun2),POINTER,NOPASS :: local_proc_ptr=>NULL()   
      END TYPE
      TYPE(ty)::local_obj
      dmy = 4
      local_obj%local_proc_ptr=>fun2
      res=local_obj%local_proc_ptr(4.5)
    END FUNCTION
 
    FUNCTION fun2(dum)
      REAL :: fun2
      REAL :: dum
      fun2 = dum + 0.5
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

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
  INTEGER :: i
  i = 4
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(i)
END FUNCTION

END PROGRAM main

