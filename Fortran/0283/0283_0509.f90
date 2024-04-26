MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22,3:22)
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1(2,4)
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3,2)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3
END TYPE

TYPE tp5
  TYPE(tp4) :: tt_4
END TYPE

TYPE ty
  INTEGER :: int1=12,int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=5
  INTEGER :: z=7,y=3
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

INTEGER,TARGET :: aa = 4,bb = 3
INTEGER :: arcm1(2,1,3,4)=20
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx1,xx2
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2
TYPE(tp5) :: tp_5

tp_5%tt_4%tt_3%tt_2(2,1)%tt_1(1,3)%arr = 0

ALLOCATE(alc1,alc2,alc3)
ALLOCATE(obj1,obj2)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4
obj2%int2 = 22

xx1 => aa
xx2 => bb
alc1 = 15
alc2 = 3
alc3 = 5

ASSOCIATE(b => tp_5%tt_4%tt_3%tt_2)
  b(2,1)%tt_1(1,3)%arr(obj%x:fun_2(10,7):fun(2),xx1:arcm1(2,1,3,4):obj%y , &
    alc3-1:alc1+alc3:xx2-1,obj1%prc2():21:2,4:obj2%prc2():2) = 1
END ASSOCIATE

IF(ALL(tp_5%tt_4%tt_3%tt_2(2,1)%tt_1(1,3)%arr(5:17:2,4:20:3,4:20:2,5:21:2,4:22:2) == 1)) THEN
  tp_5%tt_4%tt_3%tt_2(2,1)%tt_1(1,3)%arr(5:17:2,4:20:3,4:20:2,5:21:2,4:22:2) = 0
ELSE
  tp_5%tt_4%tt_3%tt_2(2,1)%tt_1(1,3)%arr(5:17:2,4:20:3,4:20:2,5:21:2,4:22:2) = 1
END IF 

IF(ALL(tp_5%tt_4%tt_3%tt_2(2,1)%tt_1(1,3)%arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

CONTAINS

INTEGER FUNCTION fun(d1)
  INTEGER :: d1
  fun = d1
END FUNCTION

INTEGER FUNCTION fun_2(dm1,dm2)
  INTEGER :: dm1,dm2
  fun_2 = dm1+dm2
END FUNCTION

END PROGRAM
