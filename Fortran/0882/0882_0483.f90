MODULE mod4
IMPLICIT NONE

TYPE ty1
  INTEGER::i1=0
  TYPE(ty1),POINTER::ty1com_ty1noptr(:)
  CLASS(ty1),POINTER::ty1com_ty1poptr(:)
  CLASS(*),POINTER::ty1com_unlimptr(:)
  CONTAINS
  PROCEDURE,PASS::ty1com_tbp1=>mod4_fun2
  PROCEDURE,NOPASS::ty1com_tbp2=>mod4_fun3
END TYPE

TYPE,EXTENDS(ty1)::ty2
  REAL::r1=0.0
  TYPE(ty1),POINTER::ty2com_ty1noptr1(:),ty2com_ty1noptr2(:)
  CLASS(ty1),POINTER::ty2com_ty1poptr1(:),ty2com_ty1poptr2(:)
  TYPE(ty1)::ty2com_ty1obj
  TYPE(ty1),ALLOCATABLE::ty2com_ty1noloc(:)
  CLASS(ty1),ALLOCATABLE::ty2com_ty1poloc(:)
  TYPE(ty2),POINTER::ty2com_ty2noptr(:)
  CLASS(ty2),POINTER::ty2com_ty2poptr(:)
END TYPE

TYPE new
  TYPE(ty1)::newcom_ty1obj
  TYPE(ty2)::newcom_ty2obj
  CLASS(ty1),POINTER::newcom_ty1poptr(:)
  CLASS(ty2),POINTER::newcom_ty2poptr(:)
END TYPE

TYPE(ty1),SAVE::mod4_ty1obj
CLASS(ty1),POINTER,SAVE::mod4_ty1poptr(:)
TYPE(ty2),SAVE::mod4_ty2obj
TYPE(ty2),TARGET,SAVE::mod4_ty2tar(3)
TYPE(new),SAVE::mod4_newobj

CONTAINS
FUNCTION mod4_fun1(dmy)
  CLASS(ty1),POINTER::dmy(:)
  CLASS(ty1),ALLOCATABLE::mod4_fun1(:)
  ALLOCATE(dmy(4))
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      PRINT*,'pass4/5'
    TYPE IS(ty2)
      PRINT*,101
  END SELECT
  ALLOCATE(ty2::dmy(4))
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      PRINT*,102
    TYPE IS(ty2)
      dmy%i1=10
      dmy(3)%i1=20
  END SELECT
  ALLOCATE(mod4_fun1,SOURCE=dmy)
END FUNCTION

INTEGER FUNCTION mod4_fun2(dmy)
CLASS(ty1)::dmy
SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy%i1=6
    mod4_fun2=dmy%i1
  TYPE IS(ty2)
    PRINT*,103
END SELECT
END FUNCTION

FUNCTION mod4_fun3()
  CLASS(*),ALLOCATABLE::mod4_fun3(:)
  ALLOCATE(ty2::mod4_fun3(4))
END FUNCTION

END MODULE

PROGRAM MAIN
USE mod4

TYPE(ty1)::main_ty1obj(3)
INTEGER::main_int1
ALLOCATE(main_ty1obj(1)%ty1com_ty1noptr(3))
ALLOCATE(main_ty1obj(1)%ty1com_ty1noptr(2)%ty1com_ty1poptr(3))
main_int1=main_ty1obj(1)%ty1com_ty1noptr(2)%ty1com_ty1poptr(3)%ty1com_tbp1()
IF(main_int1 .EQ. 6) THEN
  PRINT*,'pass1/1'
ELSE
  PRINT*,'fail'
ENDIF
END PROGRAM
