MODULE mod5
IMPLICIT NONE

TYPE ty1
  INTEGER::i1=0
  TYPE(ty1),POINTER::ty1com_ty1noptr(:,:,:,:,:,:)
  CLASS(ty1),POINTER::ty1com_ty1poptr(:,:,:,:,:,:)
  CLASS(*),POINTER::ty1com_unlimptr(:,:,:,:,:,:)
  CONTAINS
  PROCEDURE,PASS::ty1com_tbp1=>mod5_fun2
  PROCEDURE,NOPASS::ty1com_tbp2=>mod5_fun3
END TYPE

TYPE,EXTENDS(ty1)::ty2
  REAL::r1=0.0
  TYPE(ty1),POINTER::ty2com_ty1noptr1(:,:,:,:,:,:),ty2com_ty1noptr2(:,:,:,:,:,:)
  CLASS(ty1),POINTER::ty2com_ty1poptr1(:,:,:,:,:,:),ty2com_ty1poptr2(:,:,:,:,:,:)
  TYPE(ty1)::ty2com_ty1obj
  TYPE(ty1),ALLOCATABLE::ty2com_ty1noloc(:,:,:,:,:,:)
  CLASS(ty1),ALLOCATABLE::ty2com_ty1poloc(:,:,:,:,:,:)
  TYPE(ty2),POINTER::ty2com_ty2noptr(:,:,:,:,:,:)
  CLASS(ty2),POINTER::ty2com_ty2poptr(:,:,:,:,:,:)
END TYPE

TYPE new
  TYPE(ty1)::newcom_ty1obj(3,5,5,2,3,4)
  TYPE(ty2)::newcom_ty2obj(3,5,5,2,3,4)
  CLASS(ty1),POINTER::newcom_ty1poptr(:,:,:,:,:,:)
  CLASS(ty2),POINTER::newcom_ty2poptr(:,:,:,:,:,:)
END TYPE

TYPE(ty1),SAVE::mod5_ty1obj
CLASS(ty1),POINTER,SAVE::mod5_ty1poptr(:,:,:,:,:,:)
TYPE(ty2),SAVE::mod5_ty2obj
TYPE(ty2),TARGET,SAVE::mod5_ty2tar(2,3,2,4,5,1)
TYPE(new),SAVE::mod5_newobj

CONTAINS 
FUNCTION mod5_fun1(dmy)
  CLASS(ty1),POINTER::dmy(:,:,:,:,:,:)
  CLASS(ty1),ALLOCATABLE::mod5_fun1(:,:,:,:,:,:)
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      PRINT*,'pass4/5'
    TYPE IS(ty2)
      PRINT*,101
  END SELECT
  ALLOCATE(ty2::dmy(2,3,2,4,5,1))
  SELECT TYPE(dmy)
    TYPE IS(ty1)
      PRINT*,102
    TYPE IS(ty2)
      dmy%i1=10
      dmy(2,1,1,3,3,1)%i1=20
  END SELECT
  ALLOCATE(mod5_fun1,SOURCE=dmy)
END FUNCTION


INTEGER FUNCTION mod5_fun2(dmy)
CLASS(ty1)::dmy
SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy%i1=6
    mod5_fun2=dmy%i1
  TYPE IS(ty2)
    PRINT*,103
END SELECT
END FUNCTION

FUNCTION mod5_fun3()
  CLASS(*),ALLOCATABLE::mod5_fun3(:,:,:,:,:,:)
  ALLOCATE(ty2::mod5_fun3(2,3,2,4,5,1))
END FUNCTION

END MODULE

PROGRAM MAIN
USE mod5
IMPLICIT NONE

CLASS(*),POINTER::main_unlimptr(:,:,:,:,:,:)
TYPE(ty2),TARGET   :: main_ty2tar(3,5,5,2,1,4)
INTEGER::main_int1

IF(SAME_TYPE_AS(mod5_ty1poptr,main_ty2tar) .EQV. .TRUE.) PRINT*,201
mod5_ty1poptr=>main_fun1(main_ty2tar)
IF(SAME_TYPE_AS(mod5_ty1poptr,main_ty2tar) .EQV. .FALSE.) PRINT*,202
SELECT TYPE(mod5_ty1poptr)
  TYPE IS(ty1)
    PRINT*,203
  TYPE IS(ty2)
    ALLOCATE(mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noloc(3,5,5,2,1,4))
    ALLOCATE(mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noloc(3,4,3,2,1,4)%ty1com_ty1poptr(3,5,5,2,1,4))
    ALLOCATE(mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noptr1(3,5,5,2,1,4))
    ALLOCATE(ty1::mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noptr1(3,4,3,2,1,4)%ty1com_unlimptr(3,5,5,2,1,4))
    main_int1=mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noloc(3,4,3,2,1,4)%ty1com_ty1poptr(3,4,3,2,1,4)%ty1com_tbp1()
    IF(main_int1 == 6) PRINT*,'pass1/2'
    main_unlimptr=>mod5_ty1poptr(3,4,3,2,1,4)%ty2com_ty1noptr1(3,4,3,2,1,4)%ty1com_unlimptr
    SELECT TYPE(main_unlimptr)
      TYPE IS(ty2)
        PRINT*,204
      TYPE IS(ty1)
        main_int1=main_unlimptr(3,4,3,2,1,4)%ty1com_tbp1()
    END SELECT
    IF(main_int1 == 6) PRINT*,'pass2/2'
END SELECT

CONTAINS
FUNCTION main_fun1(dmy1)
  CLASS(ty1),POINTER :: main_fun1(:,:,:,:,:,:)
  TYPE(ty2),TARGET   :: dmy1(3,5,5,2,1,4)
  main_fun1=>main_fun2(dmy1)
END FUNCTION
  
FUNCTION main_fun2(dmy2)
  CLASS(ty1),POINTER :: main_fun2(:,:,:,:,:,:)
  TYPE(ty2),TARGET   :: dmy2(3,5,5,2,1,4)
  main_fun2=>main_fun3(dmy2)
END FUNCTION

FUNCTION main_fun3(dmy3)
  CLASS(ty1),POINTER :: main_fun3(:,:,:,:,:,:)
  TYPE(ty2),TARGET   :: dmy3(3,5,5,2,1,4)
  main_fun3=>dmy3
END FUNCTION

END PROGRAM
