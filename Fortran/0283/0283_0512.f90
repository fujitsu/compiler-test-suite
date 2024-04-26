MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22,3:22)
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3,4,2)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3
END TYPE

TYPE tp5
  TYPE(tp4) :: tt_4(4)
END TYPE

TYPE tp6
  TYPE(tp5) :: tt_5
END TYPE

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

INTEGER,TARGET :: aa = 2,bb = 3
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx1,xx2
TYPE(t1) :: obj
TYPE(tp6) :: tp_6
CLASS(ty),ALLOCATABLE :: obj1,obj2

tp_6%tt_5%tt_4(2)%tt_3%tt_2(2,3,1)%tt_1%arr = 0

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

ASSOCIATE(b => tp_6%tt_5%tt_4(fun(2))%tt_3%tt_2)
  b(obj%st_arr(1,3),fun(3),1)%tt_1%arr(3:obj2%prc2():3,obj1%prc2():15:2, &
                                       obj%st_arr(2,3)-1:xx2*5:alc3-alc2, &
                                       alc2*2:alc1+2:xx1+1, &
                                       xx2+2:obj%st_arr(2,3)*4:obj%x-1 ) = 1
END ASSOCIATE

IF(ALL(tp_6%tt_5%tt_4(2)%tt_3%tt_2(2,3,1)%tt_1%arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) == 1)) THEN
  tp_6%tt_5%tt_4(2)%tt_3%tt_2(2,3,1)%tt_1%arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) = 0
ELSE
  tp_6%tt_5%tt_4(2)%tt_3%tt_2(2,3,1)%tt_1%arr(3:15:3,5:15:2,3:15:2,6:16:3,5:16:2) = 1
END IF 

IF(ALL(tp_6%tt_5%tt_4(2)%tt_3%tt_2(2,3,1)%tt_1%arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun(d1)
  INTEGER :: d1
  fun = d1
END FUNCTION

END PROGRAM
