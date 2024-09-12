MODULE mod1
  IMPLICIT NONE
  TYPE base
    INTEGER(kind=8)::i1
    INTEGER(kind=8)::i2
  END TYPE
  TYPE,EXTENDS(base)::deriv
    INTEGER(kind=8)::i3
    INTEGER(kind=8)::i4
  END TYPE
  TYPE ty1
    PROCEDURE(fun1),POINTER,NOPASS,PUBLIC :: proc_ptr=>NULL()
  END TYPE
  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE
  TYPE(base),SAVE :: temp
  CONTAINS
  function fun1(dmy1,dmy2)
      INTEGER :: dmy1
      INTEGER :: dmy2
      CLASS(base),pointer :: fun1
      ALLOCATE(base::fun1)
        fun1%i1 = dmy1+2
        fun1%i2 = dmy2-2
  end function
END MODULE
PROGRAM main
USE mod1
IMPLICIT NONE
temp=callfun()
IF (temp%i1 .EQ. 8 .AND. temp%i2 .EQ. 2) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF
CONTAINS
FUNCTION callfun()
  TYPE(base) :: callfun
  TYPE(ty2) :: obj
  INTEGER :: a,b
  a=6
  b=4
  obj%ty1_obj%proc_ptr => fun1
  callfun=obj%ty1_obj%proc_ptr(a,b)
END FUNCTION

END PROGRAM main

