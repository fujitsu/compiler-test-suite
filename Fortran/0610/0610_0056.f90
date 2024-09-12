MODULE mod1
  IMPLICIT NONE

  TYPE ty
    INTEGER :: i1
  END TYPE

  TYPE,EXTENDS(ty) :: tyy
    PROCEDURE(TYPE(ty)),POINTER,NOPASS,PUBLIC :: proc_ptr
  END TYPE

  CONTAINS  
    FUNCTION fun(dmy)
      INTEGER :: dmy,dmy1,dmy2
      TYPE(ty) :: fun,fun1
      fun%i1 = dmy + 1
    RETURN
      ENTRY fun1(dmy1,dmy2)
        dmy1 = dmy1 + 1
        dmy2 = dmy2 + 1
        fun1%i1 = dmy1 + dmy2
      RETURN
    END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE
  INTEGER :: a = 4,b = 5
  TYPE(ty) :: res 
  CLASS(tyy),ALLOCATABLE :: obj
  ALLOCATE(obj)
  SELECT TYPE(asc => obj)
  TYPE IS(tyy)
  asc%proc_ptr => fun1
  res = asc%proc_ptr(a,b)
  END SELECT
  IF(res%i1 .EQ. 11) THEN
    PRINT*,'pass'
  ELSE
    PRINT*,101
  END IF
END PROGRAM

