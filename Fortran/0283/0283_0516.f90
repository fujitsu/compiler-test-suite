MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:24,3:24,3:24,3:24)
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(4,4)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3
END TYPE

TYPE ty
  INTEGER :: int1=12,int2=5
  CONTAINS
  PROCEDURE, PASS(def_dmy) :: prc2 => ty_bind
END TYPE

TYPE t1
  INTEGER :: x=3
  INTEGER :: y=5,z=7
  INTEGER :: st_arr(3,5) = 16
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

INTEGER,ALLOCATABLE :: alc1,alc2
TYPE(t1) :: obj
TYPE(tp4) :: tp_4
CLASS(ty),ALLOCATABLE :: obj1

ALLOCATE(alc1,alc2)
ALLOCATE(obj1)

tp_4%tt_3%tt_2(2,3)%tt_1%arr = 0
obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4

alc2 = 3

ASSOCIATE(b => tp_4%tt_3%tt_2(fun(2),alc2)%tt_1%arr)
  b(obj1%prc2(): , : , obj%st_arr(2,3)*2: :alc2 ,fun_2(3,5):) = 1
END ASSOCIATE

IF(ALL(tp_4%tt_3%tt_2(fun(2),alc2)%tt_1%arr(5:24,3:24,8:24:3,8:24) == 1)) THEN
  tp_4%tt_3%tt_2(fun(2),alc2)%tt_1%arr(5:24,3:24,8:24:3,8:24) = 0
ELSE
  tp_4%tt_3%tt_2(fun(2),alc2)%tt_1%arr(5:24,3:24,8:24:3,8:24) = 1
END IF 

IF(ALL(tp_4%tt_3%tt_2(fun(2),alc2)%tt_1%arr == 0)) THEN
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
