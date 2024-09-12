MODULE mod3
IMPLICIT NONE

TYPE ty1
  INTEGER::i1=0
  TYPE(ty1),POINTER::ty1com_ty1noptr
  CLASS(ty1),POINTER::ty1com_ty1poptr
  CLASS(*),POINTER::ty1com_unlimptr
  CONTAINS
  PROCEDURE,PASS::ty1com_tbp1=>mod3_fun2
  PROCEDURE,NOPASS::ty1com_tbp2=>mod3_fun3
END TYPE

TYPE,EXTENDS(ty1)::ty2
  REAL::r1=0.0
  TYPE(ty1),POINTER::ty2com_ty1noptr1,ty2com_ty1noptr2
  CLASS(ty1),POINTER::ty2com_ty1poptr1,ty2com_ty1poptr2
  TYPE(ty1)::ty2com_ty1obj
  TYPE(ty1),ALLOCATABLE::ty2com_ty1noloc
  CLASS(ty1),ALLOCATABLE::ty2com_ty1poloc
  TYPE(ty2),POINTER::ty2com_ty2noptr
  CLASS(ty2),POINTER::ty2com_ty2poptr
END TYPE

TYPE new
  TYPE(ty1)::newcom_ty1obj
  TYPE(ty2)::newcom_ty2obj
  CLASS(ty1),POINTER::newcom_ty1poptr
  CLASS(ty2),POINTER::newcom_ty2poptr
END TYPE

TYPE(ty1),SAVE::mod3_ty1obj
CLASS(ty1),POINTER,SAVE::mod3_ty1poptr
TYPE(ty2),SAVE::mod3_ty2obj
TYPE(ty2),TARGET,SAVE::mod3_ty2tar
TYPE(new),SAVE::mod3_newobj

CONTAINS 
FUNCTION mod3_fun1(dmy)
  CLASS(ty1),POINTER::dmy
  CLASS(ty1),ALLOCATABLE::mod3_fun1
  ALLOCATE(ty1::dmy)
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      PRINT*,'pass4/5'
    TYPE IS(ty2)
      PRINT*,101
  END SELECT
  DEALLOCATE(dmy)
  ALLOCATE(ty2::dmy)
  ALLOCATE(mod3_fun1,SOURCE=dmy)
END FUNCTION


INTEGER FUNCTION mod3_fun2(dmy)
CLASS(ty1)::dmy
SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy%i1=6
    mod3_fun2=dmy%i1
  TYPE IS(ty2)
    PRINT*,103
END SELECT
END FUNCTION

FUNCTION mod3_fun3()
  CLASS(*),ALLOCATABLE::mod3_fun3
  ALLOCATE(ty2::mod3_fun3)
END FUNCTION

END MODULE

PROGRAM MAIN
USE mod3

CLASS(ty1),POINTER::main_ty1poptr=>NULL()
CLASS(ty1),ALLOCATABLE::main_ty1poloc
CLASS(*),ALLOCATABLE::main_unlimloc
TYPE(ty1)::main_ty1obj
TYPE(ty2)::main_ty2obj

ALLOCATE(main_unlimloc,SOURCE=main_ty1obj%ty1com_tbp2())
IF(SAME_TYPE_AS(main_unlimloc,main_ty2obj) .EQV. .FALSE.) PRINT*,200


IF(SAME_TYPE_AS(main_ty1poptr,main_ty2obj) .EQV. .TRUE.) THEN
  PRINT*,201
ELSE
  PRINT*,'pass1/5'
ENDIF

ALLOCATE(main_ty1poloc)
SELECT TYPE(main_ty1poloc)
  TYPE IS(ty1)
    PRINT*,'pass2/5'
  TYPE IS(ty2)
    PRINT*,202
END SELECT

IF (SAME_TYPE_AS(mod3_ty1poptr,main_ty2obj) .EQV. .FALSE. ) THEN
  PRINT*,'pass3/5'
ELSE
  PRINT*,203                                              
ENDIF

DEALLOCATE(main_ty1poloc)
ALLOCATE(main_ty1poloc,SOURCE=main_fun1())

CONTAINS 

FUNCTION main_fun1()
CLASS(ty1),ALLOCATABLE::main_fun1
ALLOCATE(main_fun1,SOURCE=mod3_fun1(mod3_ty1poptr))
SELECT TYPE(main_fun1)
  TYPE IS(ty1)
    PRINT*,204
  TYPE IS(ty2)
    PRINT*,'pass5/5'
END SELECT
END FUNCTION

END PROGRAM
