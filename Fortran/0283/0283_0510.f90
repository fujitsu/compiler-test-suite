MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22,3:22) 
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(2,4)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3(3)
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
  INTEGER :: x=3
  INTEGER :: y=5,z=7
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

INTEGER,TARGET :: bb = 3
INTEGER :: arcm(1,4,3,3) = 3,arcm1(2,1,3,4)=2
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER ::xx2
INTEGER :: x=5,y=7
TYPE(t1) :: obj
TYPE(tp5) :: tp_5
CLASS(ty),ALLOCATABLE :: obj1,obj2,obj3

tp_5%tt_4%tt_3(2)%tt_2(1,3)%tt_1%arr = 0

ALLOCATE(alc1,alc2,alc3)
ALLOCATE(obj1,obj2,obj3)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4
obj2%int2 = 12
obj3%int2 = 3

xx2 => bb
alc1 = 14
alc2 = 3
alc3 = 5

ASSOCIATE(b => tp_5%tt_4%tt_3)
  b(2)%tt_2(1,3)%tt_1%arr(arcm(1,4,3,3):x+y:fun_2(4,2)/3 , 3:16:obj3%prc2(), &
                          obj%st_arr(2,3):alc1:arcm1(2,1,3,4), & 
                          obj%st_arr(2,3):xx2+17:alc3-alc2, &
                          obj%x+6:arcm(1,4,3,3)*6:obj%st_arr(1,3) ) = 1
END ASSOCIATE

IF(ALL(tp_5%tt_4%tt_3(2)%tt_2(1,3)%tt_1%arr(3:12:2,3:16:3,4:14:2,4:20:2,9:18:2) == 1)) THEN
  tp_5%tt_4%tt_3(2)%tt_2(1,3)%tt_1%arr(3:12:2,3:16:3,4:14:2,4:20:2,9:18:2) = 0
ELSE
  tp_5%tt_4%tt_3(2)%tt_2(1,3)%tt_1%arr(3:12:2,3:16:3,4:14:2,4:20:2,9:18:2) = 1
END IF 

IF(ALL(tp_5%tt_4%tt_3(2)%tt_2(1,3)%tt_1%arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
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
