MODULE mod1
  IMPLICIT NONE

  TYPE ty
    INTEGER :: i1
    INTEGER :: i2
  END TYPE

  TYPE ty1
    PROCEDURE(TYPE(ty)),POINTER,NOPASS,PUBLIC :: proc_ptr
  END TYPE

  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE

  TYPE(ty),SAVE :: temp
 
  CONTAINS  
    FUNCTION fun(dmy)
      INTEGER :: dmy
      TYPE(ty) :: fun
      INTEGER :: dmy1 
      INTEGER :: dmy2
      TYPE(ty) :: fun1
      fun%i1 = dmy + 1
    RETURN
      ENTRY fun1(dmy1,dmy2)
        dmy1 = dmy1 + 1
        dmy2 = dmy2 + 1
        fun1%i1 = dmy1 + dmy2
        fun1%i2 = dmy1 - dmy2
      RETURN
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

temp=callfun()

IF (temp%i1 .eq. 10 .AND. temp%i2 .eq. 4) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  TYPE(ty) :: callfun
  TYPE(ty2) :: obj
  INTEGER::a,b
  a=6
  b=2
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(a,b)
END FUNCTION

END PROGRAM main
