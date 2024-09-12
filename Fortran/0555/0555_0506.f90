MODULE mod1

  TYPE ty
    REAL :: r1
  END TYPE

  TYPE ty1
    PROCEDURE(TYPE(ty)),POINTER,NOPASS,PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE

  TYPE(ty) :: temp
  
  CONTAINS  
    FUNCTION fun1(dmy) RESULT (res)
      TYPE(ty) :: res
      TYPE(ty) :: dmy
      TYPE local_ty
        PROCEDURE(TYPE(ty)),POINTER,NOPASS :: local_proc_ptr=>NULL()   
      END TYPE
      TYPE(local_ty)::local_obj
      res%r1=dmy%r1
      local_obj%local_proc_ptr=>fun2
      res=local_obj%local_proc_ptr(res%r1)
    END FUNCTION
 
    FUNCTION fun2(dum)
      TYPE(ty) :: fun2
      REAL :: dum
      fun2%r1 = dum + 0.5
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

temp=callfun()

IF (temp%r1 .eq. 4.1) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  TYPE(ty) :: callfun,act_arg1
  TYPE(ty2) :: obj
  act_arg1%r1=3.6
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(act_arg1)
END FUNCTION

END PROGRAM main

