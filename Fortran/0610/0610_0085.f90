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
CLASS(*) FUNCTION ty_bind(def_dmy)
POINTER :: ty_bind
  CLASS(ty) :: def_dmy

  allocate(integer:: ty_bind)
  select type(ty_bind)
  type is(integer)
   ty_bind = def_dmy%int1
  end select
END FUNCTION

CLASS(*) FUNCTION ty1_bind(def_dmy)
POINTER :: ty1_bind
  CLASS(ty1) :: def_dmy
  allocate(integer::ty1_bind)

  select type(ty1_bind)
  type is(integer)
   ty1_bind = def_dmy%int2
  end select
END FUNCTION
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
INTEGER :: var1


ALLOCATE(obj1)
select type(tbp=>obj1%prc2())
type is(integer)
 var1=tbp
end select

IF (var1 .EQ. 3) THEN
    PRINT*,"pass"
ELSE
    PRINT*, "fail",var1
ENDIF
END PROGRAM
