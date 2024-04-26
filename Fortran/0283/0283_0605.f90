MODULE mod1
  IMPLICIT NONE
  REAL :: temp

  TYPE ty1
    PROCEDURE(fun1),POINTER,PASS,PUBLIC :: proc_ptr=>NULL()
  END TYPE

  CONTAINS  
    FUNCTION fun(dmy)
      REAL :: dmy
      REAL :: fun
      CLASS(ty1)::def_dmy
      REAL :: dmy1
      REAL :: dmy2
      REAL :: fun1
      fun = dmy + 1
    RETURN
      ENTRY fun1(def_dmy,dmy1,dmy2)
        fun1 = dmy1 + dmy2
      RETURN
    END FUNCTION
END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

temp=callfun()

IF (temp .eq. 5.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun

  associate(pp=>ty1_obj()) 
   callfun=pp%proc_ptr(2.0,3.0)
  end associate
END FUNCTION

function ty1_obj()
TYPE(ty1) :: ty1_obj
ty1_obj%proc_ptr =>NULL()
   ty1_obj%proc_ptr => fun1
end function
END PROGRAM main
