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

CLASS(ty1),POINTER::main_ty1poptr(:)=>NULL()

CLASS(ty1),ALLOCATABLE::main_ty1poloc(:)
TYPE(ty2)::main_ty2obj(4)
CLASS(*),ALLOCATABLE::main_unlimloc(:)
TYPE(ty1)::main_ty1obj

ALLOCATE(main_unlimloc,SOURCE=main_ty1obj%ty1com_tbp2())
IF(SAME_TYPE_AS(main_unlimloc,main_ty2obj) .EQV. .FALSE.) PRINT*,200

IF(SAME_TYPE_AS(main_ty1poptr,main_ty2obj) .EQV. .TRUE.) THEN
  PRINT*,201
ELSE
  PRINT*,'pass1/5'
ENDIF

ALLOCATE(main_ty1poloc(4))
SELECT TYPE(main_ty1poloc)
  TYPE IS(ty1)
    PRINT*,'pass2/5'
  TYPE IS(ty2)
    PRINT*,202
END SELECT

IF (SAME_TYPE_AS(mod4_ty1poptr,main_ty2obj) .EQV. .FALSE. ) THEN
  PRINT*,'pass3/5'
ELSE
  PRINT*,203                                              
ENDIF

DEALLOCATE(main_ty1poloc)
ALLOCATE(main_ty1poloc,SOURCE=main_fun1())

CONTAINS 

FUNCTION main_fun1()
CLASS(ty1),ALLOCATABLE::main_fun1(:)
ALLOCATE(main_fun1,SOURCE=mod4_fun1(mod4_ty1poptr))
SELECT TYPE(main_fun1)
  TYPE IS(ty1)
    PRINT*,204
  TYPE IS(ty2)
    IF(main_fun1(1)%i1 .NE. 10 .AND. main_fun1(3)%i1 .NE. 20)PRINT*,205
    PRINT*,'pass5/5'
END SELECT
END FUNCTION

END PROGRAM
