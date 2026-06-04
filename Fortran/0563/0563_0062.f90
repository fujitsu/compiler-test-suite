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
  INTEGER :: int2=0
  REAL :: real1=0
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

INTERFACE
SUBROUTINE ty_bind(def_dmy,dmy1)
  IMPORT ty
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE

SUBROUTINE ty2_bind(def_dmy,dmy1)
  IMPORT ty2
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
END SUBROUTINE

SUBROUTINE sub(def_dmy)
  IMPORT ty1
  CLASS(ty1)::def_dmy
END SUBROUTINE

SUBROUTINE ty_sub(def_dmy,dmy)
  IMPORT ty
  CLASS(ty)::def_dmy
  REAL::dmy
END SUBROUTINE

SUBROUTINE ty2_sub(def_dmy,dmy)
  IMPORT ty2
  CLASS(ty2)::def_dmy
  REAL::dmy
END SUBROUTINE

END INTERFACE
END MODULE

PROGRAM MAIN
USE mod1, only:t=>ty,t1=>ty1,t2=>ty2
IMPLICIT NONE

type tt
 CLASS(t),ALLOCATABLE :: obj1(:,:,:)
 CLASS(t1),ALLOCATABLE :: obj(:,:,:)
end type

TYPE(t2) :: obj2
type(tt)::con
type(tt)::con2
INTEGER :: var1,var2,var3
INTEGER :: var5,var6
ALLOCATE(con%obj(2,2,2))
ALLOCATE(con2%obj(2,2,2))

ALLOCATE(con%obj1(2,2,2))
call con%obj1(1,1,1)%gen(var1)
call con%obj1(1,1,1)%gen(real(3))
DEALLOCATE(con%obj1)

ALLOCATE(con2%obj1(2,2,2))
call con2%obj1(1,1,1)%gen(real(3))
DEALLOCATE(con2%obj1)

ALLOCATE(t1 :: con%obj1(2,2,2))
call con%obj1(1,1,1)%gen(var2)
con%obj(1,1,1)%int2=3
call con%obj(1,1,1)%gen()
DEALLOCATE(con%obj1)

ALLOCATE(t1 :: con2%obj1(2,2,2))
call con2%obj1(1,1,1)%gen(var5)
con2%obj(1,1,1)%int2=3
call con2%obj(1,1,1)%gen()
DEALLOCATE(con2%obj1)

ALLOCATE(con%obj1(2,2,2),con2%obj1(2,2,2),SOURCE=obj2)
call con%obj1(1,1,1)%gen(var3)
call con2%obj1(1,1,1)%gen(var6)
IF (var1 .ne. 3)print*,201
IF (var2 .ne. 3)print*,202
IF (var3 .ne. 5)print*,203
IF (var5 .ne. 3)print*,205
IF (var6 .ne. 5)print*,206

call con%obj1(1,1,1)%gen(real(4))
call con2%obj1(1,1,1)%gen(real(4))

PRINT*,"PASS"
END PROGRAM

SUBROUTINE ty2_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty2) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int3
  IF(dmy1 .NE. 5) PRINT*,"104"
END SUBROUTINE

SUBROUTINE ty_bind(def_dmy,dmy1)
  USE mod1
  CLASS(ty) :: def_dmy
  INTEGER :: dmy1
  dmy1 = def_dmy%int1
  IF(stat .EQ. 1) THEN
    IF(SIZEOF(def_dmy) .NE. 4) PRINT*,'101'
  ELSE 
    IF(SIZEOF(def_dmy) .NE. 12 .AND. stat .EQ. 2) PRINT*,'102'
  ENDIF
  stat=stat+1
  IF(dmy1 .NE. 3) PRINT*,"103"
END SUBROUTINE

SUBROUTINE sub(def_dmy)
  USE mod1
  CLASS(ty1)::def_dmy
  if(def_dmy%int2/=3)print*,'106'
END SUBROUTINE

SUBROUTINE ty_sub(def_dmy,dmy)
  USE mod1
  CLASS(ty)::def_dmy
  REAL::dmy
  if(dmy/=real(3) .and. def_dmy%int1/=2) print*,'107'
END SUBROUTINE

SUBROUTINE ty2_sub(def_dmy,dmy)
  USE mod1
  CLASS(ty2)::def_dmy
  REAL::dmy
  if(dmy/=real(4) .and. def_dmy%int3/=3) print*,'105'
END SUBROUTINE
