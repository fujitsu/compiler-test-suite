MODULE mod1
IMPLICIT NONE

TYPE t1
  INTEGER :: x=13
  INTEGER :: y=5,z=7
  INTEGER :: st_arr(3,5) = 22
END TYPE  

TYPE tp1
  INTEGER :: arr(3:24,3:24,3:24,3:24)
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1(2,3)
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3,4)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3(2,4,3)
END TYPE

TYPE tp5
  TYPE(tp4) :: tt_4
END TYPE

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER,TARGET :: bb = 10
INTEGER ::arcm1(2,1,3,4)=4
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx2
TYPE(t1) :: obj
TYPE(tp5) :: tp_5

ALLOCATE(alc1,alc2,alc3)
tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr = 0

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4

xx2 => bb
alc1 = 10
alc2 = 2
alc3 = 5

ASSOCIATE(b => tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr)
  b(fun_2(2,1)*2:fun(20):alc2,alc3:obj%st_arr(3,5):arcm1(2,1,3,4)-1, &
    arcm1(2,1,3,4)+2:obj%x+obj%y:obj%st_arr(2,3)/2, &
    obj%st_arr(1,3)+1:xx2*2:alc3-3) = 1

END ASSOCIATE

IF(ALL(tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr(6:20:2,5:22:3,6:18:2,3:20:2) == 1)) THEN
  tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr(6:20:2,5:22:3,6:18:2,3:20:2)  = 0
ELSE
  tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr(6:20:2,5:22:3,6:18:2,3:20:2)  = 1
END IF 

IF(ALL(tp_5%tt_4%tt_3(1,3,2)%tt_2(2,3)%tt_1(1,2)%arr(3:24,3:24,3:24,3:24) == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,'there'
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
