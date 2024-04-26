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

interface operator(+)
function fpls(a,b)
import ty1
class(ty1),allocatable::fpls
type(ty1),intent(in)::a,b
end function
end interface operator(+)

TYPE(ty1) :: ty1_obj1,ty1_obj2

temp=callfun()

IF (temp .eq. 5.00) THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  REAL :: callfun

  associate(pp=>ty1_obj1+ty1_obj2) 
   callfun=pp%proc_ptr(2.0,3.0)
  end associate
END FUNCTION

END PROGRAM main

function fpls(a,b)
USE mod1
class(ty1),allocatable::fpls
type(ty1),intent(in)::a,b

allocate(fpls,source=a)
deallocate(fpls)
allocate(fpls,source=b)
   fpls%proc_ptr => fun1
end function
