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
IMPLICIT NONE

CLASS(*),POINTER::main_unlimptr
TYPE(ty2),TARGET   :: main_ty2tar
INTEGER::main_int1

IF(SAME_TYPE_AS(mod3_ty1poptr,main_ty2tar) .EQV. .TRUE.) PRINT*,201
mod3_ty1poptr=>main_fun1(main_ty2tar)
IF(SAME_TYPE_AS(mod3_ty1poptr,main_ty2tar) .EQV. .FALSE.) PRINT*,202
SELECT TYPE(mod3_ty1poptr)
  TYPE IS(ty1)
    PRINT*,203
  TYPE IS(ty2)
    ALLOCATE(mod3_ty1poptr%ty2com_ty1noloc)
    ALLOCATE(mod3_ty1poptr%ty2com_ty1noloc%ty1com_ty1poptr)
    ALLOCATE(mod3_ty1poptr%ty2com_ty1noptr1)
    ALLOCATE(ty1::mod3_ty1poptr%ty2com_ty1noptr1%ty1com_unlimptr)
    main_int1=mod3_ty1poptr%ty2com_ty1noloc%ty1com_ty1poptr%ty1com_tbp1()
    IF(main_int1 == 6) PRINT*,'pass1/2'
    main_unlimptr=>mod3_ty1poptr%ty2com_ty1noptr1%ty1com_unlimptr
    SELECT TYPE(main_unlimptr)
      TYPE IS(ty2)
        PRINT*,204
      TYPE IS(ty1)
        main_int1=main_unlimptr%ty1com_tbp1()
    END SELECT
    IF(main_int1 == 6) PRINT*,'pass2/2'
END SELECT

CONTAINS
FUNCTION main_fun1(dmy1)
  CLASS(ty1),POINTER :: main_fun1
  TYPE(ty2),TARGET   :: dmy1
  main_fun1=>main_fun2(dmy1)
END FUNCTION
  
FUNCTION main_fun2(dmy2)
  CLASS(ty1),POINTER :: main_fun2
  TYPE(ty2),TARGET   :: dmy2
  main_fun2=>main_fun3(dmy2)
END FUNCTION

FUNCTION main_fun3(dmy3)
  CLASS(ty1),POINTER :: main_fun3
  TYPE(ty2),TARGET   :: dmy3
  main_fun3=>dmy3
END FUNCTION

END PROGRAM
