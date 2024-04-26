MODULE mod1
IMPLICIT NONE

TYPE tp1
  INTEGER :: arr(3:22,3:22,3:22,3:22,3:22) 
END TYPE

TYPE tp2
  TYPE(tp1) :: tt_1(4,3)
END TYPE

TYPE tp3
  TYPE(tp2) :: tt_2(3)
END TYPE

TYPE tp4
  TYPE(tp3) :: tt_3(3)
END TYPE

TYPE tp5
  TYPE(tp4) :: tt_4
END TYPE

TYPE t1
  INTEGER :: x=3
  INTEGER :: y=5,z=16
  INTEGER :: st_arr(3,5) = 12
END TYPE

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

INTEGER,TARGET :: aa = 3
INTEGER :: arcm(1,4,3,3) = 15,arcm1(2,1,3,4)=5
INTEGER,ALLOCATABLE :: alc1,alc2,alc3
INTEGER,POINTER :: xx1
INTEGER :: x=5,y=7
TYPE(t1) :: obj
TYPE(tp5) :: tp_5

tp_5%tt_4%tt_3(3)%tt_2(2)%tt_1(3,2)%arr = 0

ALLOCATE(alc1,alc2,alc3)

obj%st_arr(1,3) = 2
obj%st_arr(2,3) = 4

xx1 => aa
alc1 = 14
alc2 = 3
alc3 = 5

ASSOCIATE(b => tp_5%tt_4%tt_3)
  b(arcm(1,4,3,3)-obj%st_arr(3,5))%tt_2(obj%x-1)%tt_1(xx1,xx1-1)%arr  &
     (xx1:arcm(1,4,3,3):obj%x,fun(4):obj%z:xx1,fun_2(4,2)-fun(1):fun_2(10,5):alc2, &
      obj%x:fun_2(12,4)-2:fun(2),arcm1(2,1,3,4):x+y+4:fun(4)-2 ) = 1
END ASSOCIATE

IF(ALL(tp_5%tt_4%tt_3(3)%tt_2(2)%tt_1(3,2)%arr(3:15:3,4:16:3,5:15:3,3:14:2,5:16:2) == 1)) THEN
  tp_5%tt_4%tt_3(3)%tt_2(2)%tt_1(3,2)%arr(3:15:3,4:16:3,5:15:3,3:14:2,5:16:2) = 0
ELSE
  tp_5%tt_4%tt_3(3)%tt_2(2)%tt_1(3,2)%arr(3:15:3,4:16:3,5:15:3,3:14:2,5:16:2) = 1
END IF 

IF(ALL(tp_5%tt_4%tt_3(3)%tt_2(2)%tt_1(3,2)%arr(3:22,3:22,3:22,3:22,3:22) == 0)) THEN
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
