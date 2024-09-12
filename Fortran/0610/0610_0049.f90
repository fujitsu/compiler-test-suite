MODULE mod1
  REAL :: temp

  TYPE ty1
    PROCEDURE(fun1),POINTER,PASS(def_dmy),PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE,EXTENDS(ty1) :: ty2
    INTEGER :: int1
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
  PRINT*,101
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun
  CLASS(ty2),ALLOCATABLE :: obj
  INTEGER :: i = 4
  ALLOCATE(obj)
  SELECT TYPE(asc => obj)
  TYPE IS(ty2)
  asc%proc_ptr => fun1
  callfun = asc%proc_ptr(i)
  END SELECT
END FUNCTION

END PROGRAM main
