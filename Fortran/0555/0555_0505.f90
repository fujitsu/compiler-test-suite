MODULE mod1

  TYPE  base
    INTEGER(KIND=4)::i1=10
    INTEGER(KIND=4)::i2=12
  END TYPE

  TYPE,EXTENDS(base) :: derived
    INTEGER(KIND=4)::i3=14
    INTEGER(KIND=4)::i4=16
    TYPE(base) :: base_obj
  END TYPE


  TYPE ty1
    PROCEDURE(TYPE(derived)),POINTER,NOPASS,PUBLIC :: proc_ptr=>NULL()
  END TYPE

  TYPE ty2
    INTEGER :: int1
    TYPE(ty1) :: ty1_obj
  END TYPE

  TYPE(derived),SAVE :: temp

  CONTAINS  
    FUNCTION fun(dmy1,dmy2)
      TYPE(derived) :: dmy1(3)
      TYPE(base) :: dmy2
      TYPE(derived):: fun
      fun%base_obj%i1 = dmy1(3)%i2 + dmy2%i1
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

temp=callfun()

IF (temp%base_obj%i1 .eq. 11) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  TYPE(derived) :: callfun
  TYPE(ty2)::obj
  TYPE(derived) :: act_arg1(3)
  TYPE(base):: act_arg2
  act_arg1%i2=7
  act_arg1(3)%i2=8
  act_arg2%i1=3
  obj%ty1_obj%proc_ptr => fun
  callfun=obj%ty1_obj%proc_ptr(act_arg1,act_arg2)
END FUNCTION

END PROGRAM main

