MODULE mod1
IMPLICIT NONE

TYPE ty1
  INTEGER(kind=8) :: i1=0
  PROCEDURE(fun1),POINTER,PASS(def_dmy),PUBLIC :: proc_ptr=>NULL()
END TYPE

TYPE,EXTENDS(ty1) :: ty2
  INTEGER :: int1=0
  INTEGER :: int2=0
END TYPE

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

TYPE(ty2) :: res
CLASS(ty2),DIMENSION(:),POINTER :: obj
ALLOCATE(obj(2))
SELECT TYPE(asc => obj)
TYPE IS(ty2)
  asc(2)%int1=8
  asc(2)%int2=8
  asc(2)%proc_ptr => fun1
  res = asc(2)%proc_ptr(asc(2)%int1,asc(2)%int2)
END SELECT

IF (res%int1 .eq. 10 .AND. res%int2 .eq. 4) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM 

