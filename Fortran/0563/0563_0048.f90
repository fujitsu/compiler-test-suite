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
INTEGER FUNCTION mod4_fun2(dmy)
CLASS(ty1)::dmy
SELECT TYPE(dmy)
  TYPE IS(ty1)
    dmy%i1=6
    mod4_fun2=dmy%i1
  TYPE IS(ty2)
    PRINT*,103
  CLASS DEFAULT
    print*,106
END SELECT
END FUNCTION

FUNCTION mod4_fun3()
  CLASS(*),ALLOCATABLE::mod4_fun3(:)
  ALLOCATE(ty2::mod4_fun3(4))
END FUNCTION

END MODULE

PROGRAM MAIN
USE mod4
IMPLICIT NONE

TYPE(new)::main_newobj(5)
TYPE(new)::main_newobj2(5)
TYPE(ty1)::main_ty1obj(5)
IF (SAME_TYPE_AS(main_newobj(1)%newcom_ty1obj%ty1com_ty1poptr,main_ty1obj) .EQV. .FALSE.)print*,201
IF (SAME_TYPE_AS(main_newobj2(1)%newcom_ty1obj%ty1com_ty1poptr,main_ty1obj) .EQV. .FALSE.)print*,202

ALLOCATE(main_newobj(1)%newcom_ty2poptr(2))
ALLOCATE(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3))
ALLOCATE(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4))
ALLOCATE(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5))

ALLOCATE(main_newobj2(1)%newcom_ty2poptr(2))
ALLOCATE(main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3))
ALLOCATE(main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4))
ALLOCATE(main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5))

ALLOCATE(ty1::main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6))
ALLOCATE(ty1::main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6))

ALLOCATE(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr, &
         main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr,SOURCE=main_fun1())

ALLOCATE(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr(7)%ty1com_unlimptr,  &
         main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr(7)%ty1com_unlimptr,SOURCE=main_ty1obj(1)%ty1com_tbp2())

IF(SAME_TYPE_AS(main_newobj(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr(7)%ty1com_unlimptr,mod4_ty2obj) .NEQV. .TRUE.) PRINT*,203
IF(SAME_TYPE_AS(main_newobj2(1)%newcom_ty2poptr(2)%ty2com_ty2poptr(3)%ty2com_ty2noptr(4)%ty2com_ty1poloc(5)%ty1com_ty1poptr(6)%ty1com_ty1poptr(7)%ty1com_unlimptr,mod4_ty2obj) .NEQV. .TRUE.) PRINT*,204

  PRINT*,'pass'

CONTAINS
FUNCTION main_fun1()
  CLASS(ty1),ALLOCATABLE::main_fun1(:)
  ALLOCATE(main_fun1(7))
END FUNCTION  

END PROGRAM
