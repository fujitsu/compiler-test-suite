MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE
 
TYPE,EXTENDS(ty)::ty1
  INTEGER :: int2=5
  CONTAINS
    PROCEDURE, PASS(def_dmy) :: prc2 => ty1_bind
END TYPE

TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=7
END TYPE
  
CONTAINS
FUNCTION ty_bind(def_dmy)
  INTEGER, POINTER :: ty_bind(:,:)
  CLASS(ty) :: def_dmy

  ALLOCATE(ty_bind(4,5))
  ty_bind = def_dmy%int1
END FUNCTION

FUNCTION ty1_bind(def_dmy)
  INTEGER,POINTER :: ty1_bind(:,:)
  INTEGER,TARGET  :: tgt(4,5)
  CLASS(ty1) :: def_dmy
  tgt = def_dmy%int2
  ty1_bind => tgt 
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty1) :: obj2
ALLOCATE(obj1)
if(is_contiguous(obj1%prc2())) print*,'pass'
DEALLOCATE(obj1)
ALLOCATE(obj1,SOURCE=obj2)
if(is_contiguous(obj1%prc2()) .neqv. .true.) print*,101
DEALLOCATE(obj1)
ALLOCATE(ty2::obj1)
if(is_contiguous(obj1%prc2()) .neqv. .true.) print*,102
END PROGRAM
