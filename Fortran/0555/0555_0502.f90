MODULE mod1
  IMPLICIT NONE

  TYPE ty1
    INTEGER(kind=8) :: i1=0
    PROCEDURE(fun1),POINTER,PASS(def_dmy),PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ::ty2
    INTEGER :: int1=0
    INTEGER :: int2=0
    TYPE(ty1) :: ty1_obj
  END TYPE


  TYPE(ty2) , SAVE :: temp
 
  CONTAINS  
    FUNCTION fun(dmy)
      INTEGER :: dmy
      CLASS(ty2),ALLOCATABLE :: fun
      CLASS(ty1)::def_dmy
      INTEGER :: dmy1
      INTEGER :: dmy2
      CLASS(ty2),ALLOCATABLE :: fun1
      ALLOCATE(fun)

      fun%int1 = dmy + 1
    RETURN
      ENTRY fun1(def_dmy,dmy1,dmy2)
        def_dmy%i1=7
        ALLOCATE(ty2::fun1)

        dmy1 = 7
        dmy2 = 3
        fun1%int1 = dmy1 + dmy2
        fun1%int2 = dmy1 - dmy2
      RETURN
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

temp=callfun()

IF (temp%int1 .eq. 10 .AND. temp%int2 .eq. 4) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  TYPE(ty2) :: callfun
  TYPE(ty2) :: obj
  obj%int1=8
  obj%int2=8
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(obj%int1,obj%int2)
END FUNCTION

END PROGRAM main
