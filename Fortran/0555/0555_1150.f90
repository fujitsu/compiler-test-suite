MODULE mod1
IMPLICIT NONE

INTEGER :: stat=1

TYPE ty
  INTEGER :: int1=3
  CONTAINS
    PROCEDURE, PASS :: prc  => ty_sub
    PROCEDURE, PASS :: prc2 => ty_bind

    GENERIC :: gen => prc,prc2
END TYPE

TYPE,EXTENDS(ty)::ty1
  REAL :: real1=0
  INTEGER :: int2=0
  CONTAINS
    PROCEDURE, PASS :: prc3 => sub

    GENERIC :: gen => prc3
END TYPE


TYPE,EXTENDS(ty1)::ty2
  INTEGER :: int3=5
  CONTAINS
    PROCEDURE, PASS :: prc  => ty2_sub
    PROCEDURE, PASS :: prc2 => ty2_bind
END TYPE
  
INTERFACE gen
SUBROUTINE ty_bind(def_dmy,dmy1)
  IMPORT ty
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE
END INTERFACE
 
INTERFACE prc
SUBROUTINE ty2_bind(def_dmy,dmy1)
  IMPORT ty2
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE

SUBROUTINE ty2_sub(def_dmy,dmy)
  IMPORT ty2
  CLASS(ty2)::def_dmy
  REAL::dmy
END SUBROUTINE
END INTERFACE

INTERFACE prc3
SUBROUTINE sub(def_dmy)
  IMPORT ty1
  CLASS(ty1)::def_dmy
END SUBROUTINE

SUBROUTINE ty_sub(def_dmy,dmy)
  IMPORT ty
  CLASS(ty)::def_dmy
  REAL::dmy
END SUBROUTINE
END INTERFACE
END MODULE


PROGRAM main
USE mod1
IMPLICIT NONE

CLASS(ty),ALLOCATABLE :: obj1
TYPE(ty2) :: obj2
CLASS(ty1),ALLOCATABLE :: obj
INTEGER :: var1,var2,var3
ALLOCATE(obj)
ALLOCATE(obj1)
obj1%int1=3
call obj1%gen(var1)
call obj1%gen(real(3))
DEALLOCATE(obj1)

ALLOCATE(ty1 :: obj1)
call obj1%gen(var2)
obj%int2=3
call obj%gen()
DEALLOCATE(obj1)

ALLOCATE(obj1,SOURCE=obj2)
call obj1%gen(var3)
IF (var1 .EQ. 3 .AND. var2 .EQ. 3 .AND.  var3 .EQ. 5) THEN
    PRINT*,"PASS"
ELSE
    PRINT*, "fail"
ENDIF
call obj1%gen(real(4))
END PROGRAM

SUBROUTINE ty2_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int3
  IF(dmy1 .NE. 5) PRINT*,"fail4"
END SUBROUTINE

SUBROUTINE ty_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int1
  IF(stat .EQ. 1) THEN
    IF(SIZEOF(def_dmy) .NE. 4) PRINT*,'fail1'
  ELSE 
    IF(SIZEOF(def_dmy) .NE. 12 .AND. stat .EQ. 2) PRINT*,'fail2'
  ENDIF
  stat=stat+1
  IF(dmy1 .NE. 3) PRINT*,"fail3"
END SUBROUTINE

SUBROUTINE sub(def_dmy)
  USE mod1
  CLASS(ty1)::def_dmy
  if(def_dmy%int2/=3)print*,'fail6'
END SUBROUTINE

SUBROUTINE ty_sub(def_dmy,dmy)
  USE mod1
  CLASS(ty)::def_dmy
  REAL::dmy
  if(dmy/=real(3) .and. def_dmy%int1/=2) print*,'fail4'
END SUBROUTINE

SUBROUTINE ty2_sub(def_dmy,dmy)
  USE mod1
  CLASS(ty2)::def_dmy
  REAL::dmy
  if(dmy/=real(4) .and. def_dmy%int3/=3) print*,'fail5'
END SUBROUTINE
