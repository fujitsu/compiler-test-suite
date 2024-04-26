MODULE mod4
IMPLICIT NONE

TYPE ty1
  INTEGER::i1=0
  TYPE(ty1),POINTER::ty1com_ty1noptr(:)
  CLASS(ty1),POINTER::ty1com_ty1poptr(:)
  CLASS(*),POINTER::ty1com_unlimptr(:)
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
  ALLOCATE(mod4_fun1,SOURCE=dmy)
END FUNCTION

END MODULE
print *,'pass'
END PROGRAM
