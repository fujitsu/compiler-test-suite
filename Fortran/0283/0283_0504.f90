MODULE mod1
IMPLICIT NONE

TYPE ty
  INTEGER :: int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=3
  INTEGER :: z=7
  INTEGER :: st_arr(3,5) = 12
END TYPE

CONTAINS

INTEGER FUNCTION ty_bind(def_dmy)
  CLASS(ty) :: def_dmy
  ty_bind = def_dmy%int2
END FUNCTION

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER :: arr(3:22,3:22,3:22,3:22,3:22) = 0
INTEGER,TARGET :: aa = 2,bb = 3
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx1,xx2
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2

ALLOCATE(alc1,alc2,alc3)
ALLOCATE(obj1,obj2)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4
obj2%int2 = 15

xx1 => aa
xx2 => bb
alc1 = 14
alc2 = 3
alc3 = 5

ASSOCIATE(b => arr)
  b(3:obj2%prc2():3,obj1%prc2():15:2,obj%st_arr(2,3)-1:xx2*5:alc3-alc2, &
    alc2*2:alc1+2:xx1+1,xx2+2:obj%st_arr(2,3)*4:obj%x-1) = 1
END ASSOCIATE

IF(ALL(arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) == 1)) THEN
  arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) = 0
ELSE
  arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) = 1
END IF 

IF(ALL(arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
