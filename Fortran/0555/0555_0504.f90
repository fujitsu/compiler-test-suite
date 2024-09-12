MODULE mod1

  TYPE modtype
    REAL(KIND=8) :: r1
    CHARACTER(LEN=6) :: name1
    CHARACTER(LEN=2)::name2
  END TYPE

  CONTAINS

  FUNCTION fun(dmy)
  REAL :: dmy
  TYPE(modtype) :: fun
  REAL :: dmy1(3)
  REAL , OPTIONAL :: dmy2
  CHARACTER(LEN=10) :: dmy3
  TYPE(modtype) :: fun1
  fun%r1 = dmy + 1
  RETURN
  ENTRY fun1(dmy1,dmy2)
    dmy3= 'TESTED'
    fun1%r1 = dmy1(1) + 2.0
    fun1%name1 = dmy3
  RETURN
END FUNCTION
END MODULE

PROGRAM main
USE mod1

TYPE(modtype) :: temp

TYPE ty1
  PROCEDURE(fun1),POINTER,NOPASS :: proc_ptr=>NULL()
END TYPE

TYPE ty2
  INTEGER :: int1
  TYPE(ty1) :: ty1_obj(2)
END TYPE


temp=callfun()

IF (temp%r1 .eq. 6.00 .AND. temp%name1 .EQ. 'TESTED') THEN
  PRINT*,'pass'
ELSE
  PRINT*,'fail'
ENDIF

CONTAINS

FUNCTION callfun()
  TYPE(modtype) :: callfun
  TYPE(ty2) :: obj
  REAL :: act_arg1(3)
  act_arg1 = 2.0
  act_arg1(1) = 4.0
  obj%ty1_obj(2)%proc_ptr => fun1

  callfun=obj%ty1_obj(2)%proc_ptr(act_arg1)
END FUNCTION

END PROGRAM main
