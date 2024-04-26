MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22,3:22) 
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3,4)
END TYPE

TYPE tp4
  TYPE(tp3)  :: tt_3
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

INTEGER,ALLOCATABLE :: alc1,alc2
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2
TYPE(tp4) :: tp_4

ALLOCATE(alc1,alc2)
ALLOCATE(obj1,obj2)

tp_4%tt_3%tt_2(2,2)%tt_1%arr = 0

obj%st_arr(1,3) = 2
obj2%int2 = 20
alc1 = 18
alc2 = 3

ASSOCIATE(b => tp_4%tt_3%tt_2)
  b(obj%st_arr(1,3),fun(2))%tt_1%arr( :obj2%prc2(),obj1%prc2(): :obj%z-obj%x, :alc1:alc2, &
                                     :obj%st_arr(3,5)+3, : :fun_2(2,1)-1) = 1
END ASSOCIATE

IF(ALL(tp_4%tt_3%tt_2(2,2)%tt_1%arr(3:20,5::2,3:18:3,:15,::2) == 1)) THEN
  tp_4%tt_3%tt_2(2,2)%tt_1%arr(3:20,5::2,3:18:3,:15,::2) = 0
ELSE
  tp_4%tt_3%tt_2(2,2)%tt_1%arr(3:20,5::2,3:18:3,:15,::2) = 1
END IF 

IF(ALL(tp_4%tt_3%tt_2(2,2)%tt_1%arr(3:20,3:22,3:22,3:22,3:22) == 0)) THEN
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
