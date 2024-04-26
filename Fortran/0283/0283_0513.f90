MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22)
END TYPE

TYPE tp2
  INTEGER :: i
  TYPE(tp1) :: tt_1
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3,4,5)
END TYPE 

TYPE tp4
  TYPE(tp3) :: tt_3
END TYPE

TYPE tp5
  TYPE(tp4) :: tt_4(5)
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

INTEGER :: arcm(1,4,3,3) = 3
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
TYPE(t1) :: obj
CLASS(ty),ALLOCATABLE :: obj1,obj2,obj3
TYPE(tp5) :: tp_5
ALLOCATE(alc1,alc2,alc3)
ALLOCATE(obj1,obj2,obj3)

tp_5%tt_4(4)%tt_3%tt_2(2,3,4)%tt_1%arr = 0
tp_5%tt_4(4)%tt_3%tt_2(1,1,1)%i = 2
tp_5%tt_4(4)%tt_3%tt_2(2,2,2)%i = 3
tp_5%tt_4(4)%tt_3%tt_2(3,3,3)%i = 4

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4
obj2%int2 = 15
obj3%int2 = 3

alc1 = 14
alc2 = 3
alc3 = 5

ASSOCIATE(b => tp_5%tt_4(4)%tt_3%tt_2)
  b(b(1,1,1)%i,b(2,2,2)%i,b(3,3,3)%i)%tt_1%arr(arcm(1,4,3,3)*2:obj%y+obj%z:obj%st_arr(2,3)/2, &
                                         obj%x:fun_2(15,5)-4:fun(3) , 4:obj2%prc2():2, &
                                         obj%st_arr(2,3):alc1:arcm(1,4,3,3)) = 1
END ASSOCIATE

IF(ALL(tp_5%tt_4(4)%tt_3%tt_2(2,3,4)%tt_1%arr(6:12:2,3:16:3,4:15:2,4:14:3) == 1)) THEN
  tp_5%tt_4(4)%tt_3%tt_2(2,3,4)%tt_1%arr(6:12:2,3:16:3,4:15:2,4:14:3) = 0
ELSE
  tp_5%tt_4(4)%tt_3%tt_2(2,3,4)%tt_1%arr(6:12:2,3:16:3,4:15:2,4:14:3) = 1
END IF 

IF(ALL(tp_5%tt_4(4)%tt_3%tt_2(2,3,4)%tt_1%arr(3:22,3:22,3:22,3:22) == 0)) THEN
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
